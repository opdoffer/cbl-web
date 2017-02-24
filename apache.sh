#!/bin/bash
### CBL script installing Apache2

echo -e "Webserver en alle extra's worden geïnstalleerd"
#sudo apt-get update -y
#sudo apt-get upgrade -y
sudo apt-get install apache2 apache2-utils --force-yes
sudo apt-get install tcpdump -y
sudo apt-get install gedit -y
echo -e " "


