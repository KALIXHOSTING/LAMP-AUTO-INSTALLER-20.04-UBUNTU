#! /bin/bash

echo 'INSTALL APACHE 2'

sudo apt install -y apache2 apache2-utils

echo 'done'


echo 'START APACHE 2'

sudo systemctl start apache2

echo 'done'

echo 'ENABLE APACHE 2'

sudo systemctl enable apache2

echo 'done'

echo 'PORT APACHE 2'

sudo iptables -I INPUT -p tcp --dport 80 -j ACCEPT


echo 'done'
echo 'PORT 443 APACHE 2'

sudo iptables -I INPUT -p tcp --dport 443 -j ACCEPT


echo 'done'
echo 'CHMOD APACHE 2'

sudo chown www-data:www-data /var/www/html/ -R



echo 'done'

echo 'RELOAD APACHE 2'

sudo systemctl reload apache2

echo 'done'

echo 'MARIADB'

sudo apt install mariadb-server mariadb-client -y

echo 'done'

echo 'MARIADB start'

sudo systemctl start mariadb

echo 'done'

echo 'MARIADB ENABLE'

sudo systemctl enable mariadb


echo 'done'

echo 'MARIADB LOGIN SET UP'

sudo mysql_secure_installation


echo 'done'


echo 'php7.4 SET UP'

sudo apt install software-properties-common -y


echo 'done'

echo 'php7.4 SET UP'

sudo add-apt-repository ppa:ondrej/php -y


echo 'done'

echo 'php7.4 SET UP'

sudo apt install php7.4 -y


echo 'done'

echo 'php7.4 SET UP'

sudo apt install php7.4-{cli,common,curl,zip,gd,mysql,xml,mbstring,json,intl} -y


echo 'done'

echo 'php7.4 SET UP'

sudo a2enmod php7.4


echo 'done'

echo 'php7.4 SET UP'

sudo systemctl restart apache2


echo 'done'

echo 'php7.4 SET UP'

sudo a2dismod php7.4


echo 'done'


echo 'php7.4 SET UP'

sudo apt install php7.4-fpm -y


echo 'done'


echo 'php7.4 SET UP'

sudo a2enmod proxy_fcgi setenvif


echo 'done'

echo 'php7.4 SET UP'

sudo a2enconf php7.4-fpm


echo 'done'


echo 'php7.4 SET UP'

sudo systemctl restart apache2


echo 'done'

echo 'PHPMYADMIN SET UP'

sudo apt-get install phpmyadmin -y


echo 'done'

echo 'FFMPEG SET UP'

sudo apt-get install ffmpeg -y


echo 'done'








