#!/bin/bash
### CBL script installing Apache2

echo -e "Webserver wordt geinstalleerd"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache -y
sudo apt-get install apache2 apache2-utils -y

echo -e "De website bestanden worden gekopieerd"
sudo chmod -R 0777 /var/www/html
sudo cp -r /cbl-web/www/* /var/www/html

echo -e " "


