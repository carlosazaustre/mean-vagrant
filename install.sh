#!/bin/bash

# Install dotfiles
cd $HOME
mkdir dotfiles
cd dotfiles
git clone https://github.com/carlosazaustre/ubuntu-dotfiles .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .

# Install globally dependencies
npm install -g express
npm install -g bower
npm install -g gulp
npm install -g nodemon
npm install -g forever
npm install -g stylus
