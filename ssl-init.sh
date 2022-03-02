#!/bin/bash

echo [SSL_INIT] Copying SSL files
rm -rf /etc/apache2
cp ~/projects/ssl-david/apache2 /etc/apache2
cp ~/projects/ssl-david/ssl/davidvalor.xyz.crt /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor.xyz.csr /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor.xyz.key /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor.xyz.pem /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor_xyz.crt /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor_xyz.p7b /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor_xyz.ca-bundle /etc/ssl

echo [SSL_INIT] Enablingn a2enmod ssl
sudo a2enmod ssl

echo [SSL_INIT] Enablingn a2enmod rewrite
sudo a2enmod rewrite

echo [SSL_INIT] Restarting apache2
sudo service apache2 restart

