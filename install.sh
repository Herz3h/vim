#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ; ln -sf ~/.vim/.tern-config ~/.tern-config; ln -sf ~/.vim/.coc-settings.json ~/.config/nvim/coc-settings.json;;
    Darwin*)    ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ; ln -sf ~/.vim/.tern-config ~/.tern-config; ln -sf ~/.vim/.coc-settings.json ~/.config/nvim/coc-settings.json;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ; ln -sf ~/.vim/.tern-config ~/.tern-config;ln -sf ~/.vim/.coc-settings.json ~/.config/nvim/coc-settings.json;;
    *)          machine="UNKNOWN:${unameOut}"
esac
