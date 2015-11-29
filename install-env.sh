#!bin/bash

# Installing all the required programs
sudo apt-get update -y

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql

sudo apt-get -y install php5-imagick 

echo "Everything installed correctly!" > /tmp/hello.txt

sudo service apache2 reload

#Cloning and moving to the server all the documents required from my github account
git clone https://github.com/jginesta/itmo544-444-fall2015.git /tmp/web/

sudo mv /tmp/web/* /var/www/html/

# Making two new folders imagesResult and result in order to save images for s3
sudo mkdir /var/www/html/imagesResult

sudo chmod 777 /var/www/html/imagesResult 

sudo chown ubuntu /var/www/html/imagesResult

sudo mkdir /var/www/html/result

sudo chmod 777 /var/www/html/result 

sudo chown ubuntu /var/www/html/result 

sudo chmod 777 /var/www/html/imagick.sh

sudo chown ubuntu /var/www/html/imagick.sh 

#Downloading composer
sudo curl -sS https://getcomposer.org/installer | sudo php

sudo php composer.phar require aws/aws-sdk-php 

sudo mv vendor /var/www/html 

sudo service apache2 restart

echo "Hello!" > /tmp/hello.txt
