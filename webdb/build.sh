#!/bin/sh

# Copyright 2016 Igor Dolzhikov. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

VERSION=$1
DB_NAME=$2
DB_USERNAME=$3
DB_PASSWORD=$4

if [ "$VERSION" = "" ]; then
    echo "Usage: build.sh <version> <db-name> <db-username> <db-password>"
    echo "example: build.sh 0.1 webdemo webdemo webdemo!"
    exit
fi

if [ "$DB_NAME" = "" ]; then
  DB_NAME='webdemo'
fi

if [ "$DB_USERNAME" = "" ]; then
  DB_USERNAME='webdemo'
fi

if [ "$DB_PASSWORD" = "" ]; then
  DB_PASSWORD='webdemo!'
fi

# render a template init file
render_template() {
  eval "echo \"$(cat $1)\""
}

## escape quotes so that they're not removed by rendering
cat src/init.sql.template | sed s/\`/\\\\\`/g > src/init.sql.escaped

## Render the template
render_template src/init.sql.escaped > src/init.sql
rm -f src/init.sql.escaped

docker build --rm -t webdb:$VERSION .