#!/bin/bash

normal='\033[1;0m'
end='\033[1;m'
error='\033[1;31m[!]\033[1;m'
success='\033[1;32m[OK]\033[1;m'
warning='\033[1;33m[!]\033[1;m'
info='\033[1;34m[i]\033[1;m'
run='\033[1;97m[~]\033[1;m'

# Switch to spotify cache folder
cd ~/Library/Caches/com.spotify.client/Data

# Show msg
printf "$info Attemp to delete spotify caches.\n"
printf "$info Full path: "
pwd

printf "$error"
read -p " Delete? [y/N]" choice
    if [ "${choice}" == "y" ]; then
        rm -r *
        printf "$success Delete Successful"
    else
        printf "$success Job cancelled."
    fi