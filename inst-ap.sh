#!/bin/bash
### CBL script installing Apache2

echo -e "Webserver wordt geinstalleerd"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache -y
sudo apt-get install apache2 apache2-utils -y
echo -e " "


