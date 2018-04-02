#!/bin/bash



unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     cp .vimrc ~/;;
    Darwin*)    cp .vimrc ~/;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     copy .vimrc ~/;;
    *)          machine="UNKNOWN:${unameOut}"
esac
