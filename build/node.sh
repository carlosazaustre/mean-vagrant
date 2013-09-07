#!/bin/bash

# Check if node is installed
type node >/dev/null 2>&1 && NODE_INSTALL=false || NODE_INSTALL=true

# Install node
if $NODE_INSTALL; then
    echo ""
    echo "[mean_vagrant] INSTALLING Node.js"
    echo ""

    git clone git://github.com/ry/node.git
    cd node
    ./configure
    make
    make install
    cd ~
fi