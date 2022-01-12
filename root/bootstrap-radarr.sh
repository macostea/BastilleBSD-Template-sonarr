#!/bin/sh

mkdir /app
cd /tmp
curl -L -o radarr.tar.gz "https://radarr.servarr.com/v1/update/master/updatefile?os=bsd&arch=x64&runtime=netcore"
tar -xzvf radarr.tar.gz -C /app --strip-components=1
mkdir /usr/local/radarr

rm -rf /tmp/radarr.tar.gz
