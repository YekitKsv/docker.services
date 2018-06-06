#!/bin/sh
directory=$(pwd)
if [ $(whoami) != "root" ]; then
    echo "*** Please run this shell script with SUDO ***"
    exit
fi
echo "Install selenoid and selenoid-ui..."
# install selenoid and selenoid-ui
docker-compose up -d
# download browser images
sh $directory/download_browser_images.sh
