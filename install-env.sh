#!bin/bash

sudo apt-get update -y

sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql

git clone https://github.com/jginesta/itmo544-444-fall2015.git /tmp/web/

sudo mv /tmp/web/* /var/www/html/

sudo mv ./itmo544-444-fall2015/*.php /var/www/html

sudo curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt
#Falta &>
sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt
#Falta &>
sudo mv vendor /var/www/html &> /tmp/movevendor.txt
#Falta &>
sudo php /var/www/html/setup.php &> /tmp/database-setup.txt
#Falta &>
sudo service apache2 restart

echo "Hello!" > /tmp/hello.txt
