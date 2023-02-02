#! /bin/bash

echo 'UPDATE'

sudo apt-get update -y

echo 'done'

echo 'UPGRADE'

sudo apt-get upgrade -y

echo 'done'


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

echo 'PHP 7.4 BCMATH SET UP'

sudo apt-get install php7.4-bcmath -y


echo 'done'

echo 'PHP 7.4 more mods'

sudo apt install php7.4 libapache2-mod-php7.4 php7.4-common php7.4-sqlite3 php7.4-curl php7.4-fpm php7.4-dev php7.4-curl php7.4-xmlrpc php7.4-gd php7.4-mysql php7.4-mbstring php7.4-xml php7.4-soap php7.4-cli php7.4-zip php7.4-bz2 php7.4-dba php7.4-imap php7.4-intl php7.4-ldap php7.4-cli php7.4-cgi php7.4-fpm -y

echo 'done'


echo 'rar SET UP'

sudo apt-get install rar -y


echo 'done'

echo 'unrar SET UP'

sudo apt-get install unrar -y


echo 'done'

echo 'curl SET UP'

sudo apt-get install curl -y


echo 'done'





echo 'PHPINFO'

echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

echo 'done'

echo 'COMPOSER SET UP'

sudo apt install php-cli unzip -y


echo 'done'


echo 'COMPOSER SET UP'

curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php


echo 'done'

echo 'COMPOSER SET UP'

HASH=`curl -sS https://composer.github.io/installer.sig`


echo 'done'

echo 'COMPOSER SET UP'

php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"


echo 'done'
echo 'COMPOSER SET UP'

sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

echo 'done'

echo 'COMPOSER VERIFY SET UP'

composer

echo 'done'






