#!/bin/bash

echo ""
echo "[mean_vagrant] INSTALLING DEPS"
echo ""

apt-get -q update
apt-get install -y build-essential
