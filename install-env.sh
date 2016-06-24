#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql

sudo service apache2 reload

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

echo "The installation has succeeded" > /tmp/Hello.txt