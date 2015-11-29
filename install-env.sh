#!bin/bash

sudo apt-get update -y

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql

sudo apt-get -y install php5-imagick 

echo "Everything installed correctly!" > /tmp/hello.txt

sudo service apache2 reload

git clone https://github.com/jginesta/itmo544-444-fall2015.git /tmp/web/

sudo mv /tmp/web/* /var/www/html/

sudo mkdir /var/www/html/imagesResult

sudo chmod 777 /var/www/html/imagesResult 

sudo chown ubuntu /var/www/html/imagesResult

sudo mkdir /var/www/html/result

sudo chmod 777 /var/www/html/result 

sudo chown ubuntu /var/www/html/result 

sudo chmod 777 /var/www/html/imagick.sh

sudo chown ubuntu /var/www/html/imagick.sh  

sudo curl -sS https://getcomposer.org/installer | sudo php
# &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php 
#&> /tmp/runcomposer.txt

sudo mv vendor /var/www/html 
#&> /tmp/movevendor.txt

sudo service apache2 restart

echo "Hello!" > /tmp/hello.txt
