#!/bin/bash

set -e

# Fake inputs for testing.
debug=${DEBUG_SWIFT_TEST_MATRIX-'false'}
platforms=${1-'macOS'}
swift_versions=${2-'5.6'}
subcommand=${3-'test'}

# Define our constants.
delimeter=" "

# Define our functions.
get_runner() {
    set -e

    # Our first argument is the platform.
    if [ $1 == 'linux' ]; then
        # All Linux builds use the latest version of Ubuntu.
        echo 'ubuntu-latest'
    else
        # Our second argument is the swift_version.
        # GitHub's macOS runners come with different versions of Xcode preinstalled.
        case "$2" in
        5.3 | 5.4)
            echo 'macos-11'
            ;;
        5.5 | 5.6 | 5.7)
            echo 'macos-12'
            ;;
        *)
            echo "ERROR: Swift version '$2' not supported by this action!" 1>&2
            exit 1
            ;;
        esac
    fi
}

# Sanitize inputs.
platforms=$(echo "$platforms" | tr '[:upper:]' '[:lower:]')

# Convert inputs to arrays.
IFS="$delimeter" read -a platforms_array <<<"$platforms"
IFS="$delimeter" read -a swift_versions_array <<<"$swift_versions"

# Print our debugging information.
if [ $debug == 'true' ]; then
    echo '====== Debug Information ==================================='
    echo ""
    echo "Platforms:        ${platforms} (${#platforms_array[@]})"
    echo "Swift Versions:   ${swift_versions} (${#swift_versions_array[@]})"
    echo ""
    echo '====== Outputs ============================================='
    echo ""
    echo "test-matrix: ["
fi

# Create the start of our output string
test_matrix="["

# Loop over every platform and swift version.
for platform in "${platforms_array[@]}"; do
    for swift_version in "${swift_versions_array[@]}"; do
        runner=$(get_runner $platform $swift_version)

        if [[ $subcommand == 'test' && $platform == 'watchos' && $swift_version == '5.3' ]]; then
            # XCTest is not compatible with watchOS when compiling for Swift 5.3.
            # Therefore, we have to skip testing *and* building this package with xcodebuild.
            continue
        fi

        build_method='swift'
        container=''

        if [[ $platform == 'ios' || $platform == 'tvos' || $platform == 'watchos' ]]; then
            # iOS, tvOS, and watchOS still require xcodebuild for building and testing via the command line.
            build_method='xcodebuild'
        elif [ $platform == 'linux' ]; then
            container="swift:${swift_version}-focal"
        fi

        output="{ "
        output+="\"runner\": \"${runner}\", "
        output+="\"container\": \"${container}\", "
        output+="\"platform\": \"${platform}\", "
        output+="\"build-method\": \"${build_method}\", "
        output+="\"subcommand\": \"${subcommand}\", "
        output+="\"swift-version\": \"${swift_version}\""
        output+=" },"

        if [ $debug == 'true' ]; then echo "    $output"; fi
        test_matrix+="$output"
    done
done

if [ $debug == 'true' ]; then
    echo ']'
    echo ""
    echo '============================================================'
fi

# Tie a bow on our output string.
test_matrix+="]"

# Echo our Xcode version as GitHub Actions step output.
echo "::set-output name=test-matrix::${test_matrix}"
