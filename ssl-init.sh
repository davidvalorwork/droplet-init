#!/bin/bash

echo [SSL_INIT] Copying SSL files
rm -rf /etc/apache2
cp ~/projects/ssl-david/apache2 /etc/apache2
rm -rf /etc/ssl
cp ~/projects/ssl-david/ssl /etc/ssl

echo [SSL_INIT] Enablingn a2enmod ssl
sudo a2enmod ssl

echo [SSL_INIT] Enablingn a2enmod rewrite
sudo a2enmod rewrite

echo [SSL_INIT] Restarting apache2
sudo service apache2 restart

