#1/bin/sh

# check if plex service account exists. If not, make a plex service account

#make plex director
mkdir ~/plexdownload/ && cd $_

#download plex 
wget https://downloads.plex.tv/plex-media-server/1.15.6.1079-78232c603/plexmediaserver_1.15.6.1079-78232c603_amd64.deb

dpkg -i plexmediaserver*.deb

