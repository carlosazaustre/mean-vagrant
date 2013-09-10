#!/bin/bash

echo ""
echo "[mean_vagrant] STARTING BUILD"
echo ""

# Set scripts defaults
export MY_PATH=/vagrant/env
export DEBIAN_FRONTEND=noninteractive
export USER_PATH="`( cd ~ && pwd )`"

# source $MY_PATH/settings/local.sh
# $MY_PATH/utils/info.sh

# Build scripts
$MY_PATH/build/deps.sh
$MY_PATH/build/git.sh
$MY_PATH/build/mongo.sh
$MY_PATH/build/node.sh
$MY_PATH/build/unpack.sh

echo ""
echo "[mean_vagrant] BUILD COMPLETE"
echo ""