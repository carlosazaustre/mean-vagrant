#!/bin/bash

echo ""
echo "[mean_vagrant] CONFIGURING DOTFILES"
echo ""

git clone https://github.com/carlosazaustre/dotfiles.git
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .