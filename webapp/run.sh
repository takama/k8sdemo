#!/bin/sh

# Copyright 2016 Igor Dolzhikov. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

VERSION=$1
APP_PORT=$2
DB_HOST=$3
DB_PORT=$4
DB_NAME=$5
DB_USERNAME=$6
DB_PASSWORD=$7


if [ "$VERSION" = "" ]; then
    echo "Usage: run.sh <version> <app-port> <db-host> <db-port> <db-name> <db-username> <db-password>"
    echo "example: run.sh 0.1 3000 172.17.0.1 3306 webdemo webdemo webdemo!"
    exit
fi

if [ "$APP_PORT" = "" ]; then
	APP_PORT=3000
fi

if [ "$DB_HOST" = "" ]; then
	DB_HOST='172.17.0.1'
fi

if [ "$DB_PORT" = "" ]; then
	DB_PORT=3306
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

docker run --name webapp -p $APP_PORT:$APP_PORT \
  -e "WEBAPP_PORT=$APP_PORT" \
  -e "WEBAPP_DB_HOST=$DB_HOST" \
  -e "WEBAPP_DB_PORT=$DB_PORT" \
  -e "WEBAPP_DB_NAME=$DB_NAME" \
  -e "WEBAPP_DB_USERNAME=$DB_USERNAME" \
  -e "WEBAPP_DB_PASSWORD=$DB_PASSWORD" \
  -d webapp:$VERSION
