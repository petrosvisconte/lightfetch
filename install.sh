#!/bin/bash

# Author: Pierre Visconti
# Installation script for lightfetch, requires root/sudo privilege
# This script is intended to be run from within the lightfetch directory pulled from github

set -euo pipefail

if [ -f lightfetch ]; then
    sudo cp lightfetch /usr/local/bin
else 
    echo "> lightfetch file not found"
    echo "> Installation failed"
    exit 0
fi

input=
until [ "${input}" == "y" ] || [ "${input}" == "n" ]; do
    read -p "Create a "${HOME}"/.config/lightfetch directory? [y/n]: " input    
    if [ "${input}" == "y" ]; then
        mkdir -v "${HOME}"/.config/lightfetch
        # copy themes to .config
        echo "> Installation complete. Try entering: lightfetch"
    elif [ "${input}" == "n" ]; then
        echo "> Installation complete. Try entering: lightfetch"
    fi
done

