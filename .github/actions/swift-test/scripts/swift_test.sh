#!/bin/bash

set -e

#====================#
# Define Argument Defaults
#====================#

# Define the operating system we're running.
operating_system=$(uname)

# Define the architecture our operating system is running on.
arch=$(uname -m)

# Define our default subcommand, which is "test".
subcommand='test'

# Our default platform is Linux on Linux operating systems or macOS on Darwin (Apple) operating systems.
if [ $operating_system == 'Linux' ]; then
    platform='linux'
else
    platform='macos'
fi

# Our default build method is "swift" for Linux or "xcodebuild" for Apple platforms.
# This can be overridden by passing the --method flag, though it is not recommended.
if [ $platform == 'Linux' ]; then
    method='swift'
else
    method='xcodebuild'
fi

#====================#
# Get Arguments
#====================#

# This method isn't foolproof, as it relies on options being explicitly passed via alternating option/value order.
# source: https://www.brianchildress.co/named-parameters-in-bash/
while [ $# -gt 0 ]; do
    if [[ $1 == *"--"* ]]; then
        param="${1/--/}"
        declare $param="$2"
    fi
    shift
done

#====================#
# Validate Arguments
#====================#

if [ -z "$scheme" ]; then
    echo "ERROR: Scheme is required!"
    exit 1
fi

#====================#
# Sanitize Arguments
#====================#

# Convert our arguments to lowercase for more defensive comparisons.
platform=$(echo "$platform" | tr '[:upper:]' '[:lower:]')
method=$(echo "$method" | tr '[:upper:]' '[:lower:]')
subcommand=$(echo "$subcommand" | tr '[:upper:]' '[:lower:]')

#====================#
# Define Functions
#====================#

swift_test() {
    set -e

    # Before we do anything, clean the build artifacts.
    swift package clean

    # Define our command.
    case $subcommand in
    build)
        command='swift build -c debug'
        ;;
    test)
        command='swift test -c debug'
        ;;
    *)
        echo "ERROR: Invalid subcommand '${subcommand}'. Valid options are: build, test"
        exit 1
        ;;
    esac

    # If code coverage is enabled, add it to the command.
    if [ -n "$codecov" ]; then
        command+=" --enable-code-coverage"
    fi

    # If we're running on Linux, add the --enable-test-discovery flag.
    # This is only required in Swift versions before 5.5, but adding it is safe.
    if [ $platform == 'linux' ]; then
        command+=" --enable-test-discovery"
    fi

    # If we're not running on the macOS or Linux platforms, we need to pass an SDK into the command.
    # TODO: This sort of testing doesn't seem to work well, and currently only works on macOS 12.0+ / Xcode 14+ as written.
    if [[ $platform != 'macos' || $platform != 'linux' ]]; then
        if [[ $arch != 'arm64' && $arch != 'x86_64' ]]; then
            echo "ERROR: Invalid architecture '${arch}'!"
            exit 1
        fi

        case $platform in
        ios)
            command+=" -Xswiftc '-sdk' -Xswiftc '$(xcrun --sdk iphonesimulator --show-sdk-path)' -Xswiftc '-target' -Xswiftc '${arch}-apple-ios16.0-simulator'"
            ;;
        tvos)
            command+=" -Xswiftc '-sdk' -Xswiftc '$(xcrun --sdk appletvsimulator --show-sdk-path)' -Xswiftc '-target' -Xswiftc '${arch}-apple-tvos16.0-simulator'"
            ;;
        watchos)
            command+=" -Xswiftc '-sdk' -Xswiftc '$(xcrun --sdk watchsimulator --show-sdk-path)' -Xswiftc '-target' -Xswiftc '${arch}-apple-watchos9.0-simulator'"
            ;;
        esac
    fi

    # Print the command for debugging before we run it.
    echo "============================================================"
    echo "Running command:"
    echo "$ $command"
    echo "============================================================"

    # Run our command.
    eval "$command"

    # Copy code coverage results into the output directory, if applicable.
    if [[ -n "$codecov" && -n "$output" ]]; then
        echo "Copying code coverage results into directory '${output}'."
        cp $(swift test --show-codecov-path) "${output}/codecov.json"
    fi

    echo "============================================================"
}

# TODO: Add ability to collect code coverage / xctestresult and pass in output directory.
xcodebuild_test() {
    set -e

    # Define our command.
    case $subcommand in
    build)
        command="xcodebuild clean build -scheme ${scheme}"
        ;;
    test)
        command="xcodebuild clean test -scheme ${scheme}"
        ;;
    *)
        echo "ERROR: Invalid subcommand '${subcommand}'. Valid options are: build, test"
        exit 1
        ;;
    esac

    # Add our destination to the xcodebuild command.
    # The devices used here support Xcode 12 and Xcode 13 explicitly.
    # To get valid destinations, run "xcodebuild -showdestinations -scheme <package_name>"
    # TODO: Investigate generic platform usage -- it works sometimes, not always
    case $platform in
    ios)
        # command+=" -destination 'generic/platform=ios'"
        command+=" -destination 'platform=iOS Simulator,name=iPhone 12 Pro'"
        ;;
    macos)
        command+=" -destination 'platform=macOS,arch=${arch}'"
        ;;
    tvos)
        # command+=" -destination 'generic/platform=tvos'"
        command+=" -destination 'platform=tvOS Simulator,name=Apple TV'"
        ;;
    watchos)
        # command+=" -destination 'generic/platform=watchos'"
        command+=" -destination 'platform=watchOS Simulator,name=Apple Watch Series 6 - 44mm'"
        ;;
    linux)
        echo "ERROR: Linux cannot run xcodebuild!"
        exit 1
        ;;
    esac

    # Print the command for debugging before we run it.
    echo "============================================================"
    echo "Running command:"
    echo "$ $command"
    echo "============================================================"

    # Run our command.
    eval "$command"
}

run_tests() {
    set -e

    # Next, process the test function for the given platform.
    case $method in
    swift)
        swift_test
        ;;
    xcodebuild)
        xcodebuild_test
        ;;
    *)
        echo "ERROR: Invalid build method '${method}'. Valid options are: swift, xcodebuild"
        exit 1
        ;;
    esac
}

validate_operating_system() {
    set -e

    case $platform in
    linux)
        expected_operating_system='Linux'
        ;;
    *)
        expected_operating_system='Darwin'
        ;;
    esac

    if [ $operating_system != $expected_operating_system ]; then
        echo "ERROR: Invalid operating system for platform '$platform'! Expected '$expected_operating_system', evaluated '$operating_system'."
        exit 1
    fi
}

#====================#
# Main
#====================#

# Create the output directory if it does not already exist.
# We do this upfront because we may need this for outputting error logs as well.
if [ -n "$output" ]; then
    echo "Creating output directory '${output}'."
    mkdir -p $output
fi

# Validate our operating system before we do anything else.
# For example, a build intended for Linux should not run on Darwin,
# and a build intended for tvOS should not run on Linux.
validate_operating_system

# Run our tests.
run_tests