#!/bin/sh

VERSION=$1

if [ "$VERSION" = "" ]; then
    echo "Usage: build.sh <version>"
    echo "example: build.sh 0.1"
    exit
fi

docker build --rm -t webapp:$VERSION .