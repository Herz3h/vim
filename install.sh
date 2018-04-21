#!/bin/bash



unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     ln -rsf .vimrc ~/.vimrc; ln -rsf .tmux.conf ~/.tmux.conf ;;
    Darwin*)    ln -rsf .vimrc ~/.vimrc; ln -rsf .tmux.conf ~/.tmux.conf ;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     mklink .vimrc ~/;;
    *)          machine="UNKNOWN:${unameOut}"
esac
