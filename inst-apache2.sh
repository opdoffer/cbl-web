#!/bin/bash
### CBL script installing Apache2

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache -y
sudo apt-get install apache2 apache2-utils -y

sudo su -c 'cat <<EOF >  /etc/apache2/sites-enabled/000-default.conf
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined

    <Directory "/var/www/html">
        AuthType Basic
        AuthName "Restricted Content"
        AuthUserFile /etc/apache2/.htpasswd
        Require valid-user
    </Directory>
</VirtualHost>
EOF'

cp -r /cbl/www/* /var/www/html

