#!/bin/bash

echo [SSL_INIT] Copying SSL files
sudo ufw allow "Apache Full"
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod proxy_balancer
sudo a2enmod lbmethod_byrequests
sudo systemctl restart apache2

rm -rf /etc/apache2/sites-available/
cp -r ~/projects/ssl-david/apache2/sites-available/ /etc/apache2
rm -rf /etc/apache2/sites-enabled/
cp -r ~/projects/ssl-david/apache2/sites-enabled /etc/apache2
mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf.back
cp -r ~/projects/ssl-david/apache2/apache2.conf /etc/apache2/
rm /etc/apache2/ports.conf
cp -r ~/projects/ssl-david/apache2/ports.conf /etc/apache2/ports.conf

cp ~/projects/ssl-david/ssl/davidvalor.xyz.crt /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor.xyz.csr /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor.xyz.key /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor.xyz.pem /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor_xyz.crt /etc/ssl
cp ~/projects/ssl-david/ssl/davidvalor_xyz.p7b /etc/ssl
cp -r ~/projects/ssl-david/ssl/davidvalor_xyz.ca-bundle /etc/ssl


sudo a2ensite 000-default.conf
sudo apache2ctl configtest
sudo systemctl reload apache2

echo [SSL_INIT] Enablingn a2enmod ssl
sudo a2enmod ssl

echo [SSL_INIT] Enablingn a2enmod rewrite
sudo a2enmod rewrite

echo [SSL_INIT] Restarting apache2
sudo service apache2 restart

