#!/bin/sh

# Copyright 2016 Igor Dolzhikov. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

VERSION=$1

if [ "$VERSION" = "" ]; then
    echo "Usage: build.sh <version>"
    echo "example: build.sh 0.1"
    exit
fi

docker build --rm -t webapp:$VERSION .