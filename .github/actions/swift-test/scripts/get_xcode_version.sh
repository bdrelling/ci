#!/bin/bash

# Our first and only argument is the Swift version.
# This switch uses mappings from https://swiftversion.net
case "$1" in
5.7)
    xcode_version='14.2'
    ;;
5.8)
    xcode_version='14.3'
    ;;
5.9)
    xcode_version='15.2'
    ;;
5.10)
    xcode_version='15.3'
    ;;
*)
    echo "ERROR: Swift version '$1' not supported by this action!" 1>&2
    exit 1
    ;;
esac

# Echo our Xcode version as GitHub Actions step output.
echo "xcode-version=${xcode_version}" >>$GITHUB_OUTPUT
