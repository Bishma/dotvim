#!/bin/bash
ln -s $HOME/.vim/.vimrc
ln -s $HOME/.vim/.vim-bundle
cd $HOME/.vim
git submodule init
git submodule update
vim -c "BundleInstall"
