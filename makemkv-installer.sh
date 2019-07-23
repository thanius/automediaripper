#!/bin/bash

if [ $(whoami) != "root" ]; then
   echo "Please run this script as root, then follow on screen instructions."
   exit 0
fi

TEMP=$(mktemp -d)
VERSION=$(wget -qO- "http://www.makemkv.com/forum2/viewtopic.php?f=3&t=224"|grep "makemkv-bin"|perl -pe 'if(($_)=/([0-9]+([.][0-9]+)+)/){$_.="\n"}')

echo "Installing required development tools."
apt-get install build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev libqt4-dev -y

echo -n "Downloading files..."
for FILE in bin oss; do
wget -q http://www.makemkv.com/download/makemkv-$FILE-$VERSION.tar.gz -P $TEMP
done
echo " Done!"

cd $TEMP && for FILE in *.tar.gz; do tar zxvf $FILE; done

cd makemkv-oss-$VERSION
./configure
make
make install

cd ../makemkv-bin-$VERSION
make
make install
