#!/bin/bash
# Zorg dat de website om een wachtwoord vraagt

echo -e "Dit commando gaat zorgen dat je website altijd om een wachtwoord gaat vragen om in te loggen."

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
sudo service apache2 restart

echo -e "Klaar!"