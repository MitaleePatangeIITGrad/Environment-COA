#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql

sudo service apache2 reload

sudo mv ../Environment-COA/wp-config.php /var/www/html/wp-config.php

cd /var/www/html

sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz

cd wordpress/

sudo mv ../wp-config.php wp-config.php

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

echo "The installation has succeeded" > /tmp/Hello.txt