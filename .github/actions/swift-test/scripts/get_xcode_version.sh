#!/bin/bash

# Our first and only argument is the Swift version.
# This switch uses mappings from https://swiftversion.net
case "$1" in
5.3)
    xcode_version='12.4'
    ;;
5.4)
    xcode_version='12.5'
    ;;
5.5)
    xcode_version='13.2'
    ;;
5.6)
    xcode_version='13.4'
    ;;
5.7)
    xcode_version='14.2'
    ;;
*)
    echo "ERROR: Swift version '$1' not supported by this action!" 1>&2
    exit 1
    ;;
esac

# Echo our Xcode version as GitHub Actions step output.
echo "::set-output name=xcode-version::${xcode_version}"
