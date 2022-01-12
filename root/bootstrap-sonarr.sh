#!/bin/sh

mkdir /app
cd /tmp
curl -L -o sonarr.tar.gz "https://services.sonarr.tv/v1/download/main/latest?version=3&os=linux"
tar -xzvf sonarr.tar.gz -C /app --strip-components=1
mkdir /usr/local/sonarr

rm -rf /tmp/sonarr.tar.gz
