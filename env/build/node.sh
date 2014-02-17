#!/bin/bash

# Check if node is installed
type node >/dev/null 2>&1 && NODE_INSTALL=false || NODE_INSTALL=true

# Install node
if $NODE_INSTALL; then
    echo ""
    echo "[mean_vagrant] INSTALLING Node.js"
    echo ""

    # sudo apt-get update
    apt-get -q update
    apt-get install -y python-software-properties python g++ make
    apt-get -q update
    add-apt-repository ppa:chris-lea/node.js
    apt-get -q update
    apt-get install -y nodejs

    npm install -g express
    npm install -g bower
    npm install -g stylus
    npm install -g grunt
    npm install -g grunt-cli
    npm install -g forever
    npm install -g nodemon
fi