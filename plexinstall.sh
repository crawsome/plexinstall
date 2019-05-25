#1/bin/sh

# check if plex service account exists. If not, make a plex service account

#make plex director
mkdir ~/plexinstall/ || true

cd ~/plexinstall/

#download plex 
wget https://downloads.plex.tv/plex-media-server-new/1.15.6.1079-78232c603/debian/plexmediaserver_1.15.6.1079-78232c603_amd64.deb

dpkg -i plexmediaserver_1.15.6.1079-78232c603_amd64.deb

