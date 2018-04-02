#!/bin/bash



unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     ln -rsf .vimrc ~/.vimrc ;;
    Darwin*)    ln -rsf .vimrc ~/.vimrc ;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     mklink .vimrc ~/;;
    *)          machine="UNKNOWN:${unameOut}"
esac
