#!/bin/sh
browsers=$(pwd)/selenoid/browsers.json
# check browsers.json
if [ ! -f $browsers ]; then
    echo "File ($browsers) not found!"
    exit
fi
# check jq
if  ! which jq 1>/dev/null; then
    echo "Program jq not installed."
    echo "About program: https://stedolan.github.io/jq/"
    echo "Install jq..."
    apt-get -y install jq
fi
# pull browser image
echo "Pulling browsers images..."
cat $browsers | jq -r '..|.image?|strings' | xargs -I{} docker pull {}