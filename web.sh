#!/bin/bash
### CBL script installing web-bestanden

sudo chmod -R 0777 /var/www/html
sudo cp -r ./cbl-web/www/* /var/www/html
echo -e "De website bestanden zijn gekopieerd"
echo -e " "


