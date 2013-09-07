#!/bin/bash

# Check if git is installed
type git >/dev/null 2>&1 && GIT_INSTALL=false || GIT_INSTALL=true

# Install git
if $GIT_INSTALL; then
	echo ""
	echo "[mean_vagrant] INSTALLING DEPENDENCIES"
	echo ""
    apt-get -q update
    apt-get install -y git-core
fi
