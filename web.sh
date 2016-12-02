#!/bin/bash
### CBL script installing web-bestanden

echo -e "De website bestanden worden gekopieerd"
sudo chmod -R 0777 /var/www/html
sudo cp -r /cbl-web/www/* /var/www/html

echo -e " "


