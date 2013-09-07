#!/bin/bash

# Check if mongo is installed
type mongo >/dev/null 2>&1 && MONGO_INSTALL=false || MONGO_INSTALL=true

# Install mongo
if $MONGO_INSTALL; then
    echo ""
    echo "[mean_vagrant] INSTALLING MongoDB"
    echo ""

    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

    apt-get -q update
    apt-get install -y mongodb-10gen=2.2.3
fi