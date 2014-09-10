#!/bin/bash

# Check if node is installed
type node >/dev/null 2>&1 && NODE_INSTALL=false || NODE_INSTALL=true

# Install node
if $NODE_INSTALL; then
    echo ""
    echo "[mean_vagrant] INSTALLING Node.js"
    echo ""

    apt-get install node
    apt-get install npm

    # Globally dependencies
    npm install -g express
    npm install -g bower
    npm install -g stylus
    npm install -g gulp
    npm install -g forever
    npm install -g nodemon
fi
