#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ; ln -sf ~/.vim/.tern-config ~/.tern-config;;
    Darwin*)    ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ; ln -sf ~/.vim/.tern-config ~/.tern-config;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ; ln -sf ~/.vim/.tern-config ~/.tern-config;;
    *)          machine="UNKNOWN:${unameOut}"
esac
