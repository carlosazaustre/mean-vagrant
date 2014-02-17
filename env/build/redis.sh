#!/bin/bash

# Check if mongo is installed
type redis-cli >/dev/null 2>&1 && REDIS_INSTALL=false || REDIS_INSTALL=true

# Install mongo
if $REDIS_INSTALL; then
    echo ""
    echo "[mean_vagrant] INSTALLING Redis"
    echo ""

    apt-get -q update
    apt-get install -y redis-server
fi