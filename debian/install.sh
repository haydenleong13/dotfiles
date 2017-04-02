#!/bin/bash

# Install software

sudo apt-get install -y xorg i3 rxvt-unicode-256color

sudo apt-get install -y ttf-wqy-microhei ttf-wqy-zenhei

sudo apt-get install -y vim git feh

# Configure

## .xinitrc

if [[ -f $HOME/.xinitrc ]]; then
    echo ".xinitrc already exists in $HOME/"
else
    cp xinitrc $HOME/.xinitrc
fi

## .Xresources

if [[ -f $HOME/.Xresources ]]; then
    echo ".Xresources already exists in $HOME/"
else
    cp Xresources $HOME/.Xresources
fi

## .i3/config

if [[ -f $HOME/.i3/config ]]; then
    echo ".i3/config already exists in $HOME/"
else
    mkdir -p $HOME/.i3
    cp i3-config $HOME/.i3/config
fi

## .bashrc

if [[ -f $HOME/.bashrc ]]; then
    cat < bashrc >> $HOME/.bashrc
    echo ".bashrc already exists in $HOME/, bashrc appends to it"
else
    cp bashrc $HOME/.bashrc
fi

## .vimrc

if [[ -f $HOME/.vimrc ]]; then
    echo ".vimrc already exists in $HOME/"
else
    cp vimrc $HOME/.vimrc
fi
