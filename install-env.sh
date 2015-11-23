#!bin/bash

sudo apt-get update -y

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql php5-imagick

sudo service apache2 reload

git clone https://github.com/jginesta/itmo544-444-fall2015.git /tmp/web/

sudo mv /tmp/web/* /var/www/html/

sudo mv ./itmo544-444-fall2015/*.php /var/www/html

sudo curl -sS https://getcomposer.org/installer | sudo php
# &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php 
#&> /tmp/runcomposer.txt

sudo mv vendor /var/www/html 
#&> /tmp/movevendor.txt

sudo service apache2 restart

echo "Hello!" > /tmp/hello.txt
