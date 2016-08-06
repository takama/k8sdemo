#!/bin/sh

# Copyright 2016 Igor Dolzhikov. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

VERSION=$1
DB_PORT=$2
DB_ROOT_PASSWORD=$3

if [ "$VERSION" = "" ]; then
    echo "Usage: run.sh <version> <db-port> <root_password>"
    echo "example: run.sh 0.1 3306 behappy!"
    exit
fi

if [ "$DB_PORT" = "" ]; then
	DB_PORT=3306
fi

if [ "$DB_ROOT_PASSWORD" = "" ]; then
  DB_ROOT_PASSWORD='behappy!'
fi

docker run --name webdb -p $DB_PORT:3306 \
  -e "MYSQL_ROOT_PASSWORD=$DB_ROOT_PASSWORD" \
  -d webdb:$VERSION
