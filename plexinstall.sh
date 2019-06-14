#1/bin/sh

#make plex directory
mkdir ~/plexinstall/ || true
cd ~/plexinstall/

#download plex (old way)
#wget https://downloads.plex.tv/plex-media-server-new/1.15.6.1079-78232c603/debian/plexmediaserver_1.15.6.1079-78232c603_amd64.deb
#dpkg -i plexmediaserver_1.15.6.1079-78232c603_amd64.deb


# add repo
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -

# install it with yes toggle
apt-get install plexmediaserver -y

# start the enable the service
systemctl enable plexmediaserver.service

# start the service
systemctl start plexmediaserver.service
