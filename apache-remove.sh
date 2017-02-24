#!/bin/bash
### CBL script installing Apache2

echo -e "Webserver en website cbl worden verwijderd"
#sudo apt-get update -y
#sudo apt-get remove --purge apache2 apache2-utils -y
sudo rm -R /var/www/html
echo -e "Apache en de websitebestanden zijn verwijderd. gedit en tcpdump zijn nog geïnstalleerd gelaten"
sudo apt-get autoremove
echo -e " "


