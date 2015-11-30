#!bin/bash

# Installing all the required programs
sudo apt-get update -y > /tmp/update.txt

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql > /tmp/update.txt

sudo apt-get -y install php5-imagick > /tmp/update.txt

echo "Everything installed correctly!" > /tmp/hello.txt

sudo service apache2 reload > /tmp/update.txt

#Cloning and moving to the server all the documents required from my github account
git clone https://github.com/jginesta/itmo544-444-fall2015.git /tmp/web/ > /tmp/update.txt

sudo mv /tmp/web/* /var/www/html/ > /tmp/update.txt

# Making two new folders imagesResult and result in order to save images for s3
sudo mkdir /var/www/html/imagesResult > /tmp/update.txt 

sudo chmod 777 /var/www/html/imagesResult > /tmp/update.txt

sudo chown ubuntu /var/www/html/imagesResult > /tmp/update.txt

sudo mkdir /var/www/html/result > /tmp/update.txt

sudo chmod 777 /var/www/html/result > /tmp/update.txt

sudo chown ubuntu /var/www/html/result > /tmp/update.txt

sudo chmod 777 /var/www/html/imagick.sh > /tmp/update.txt

sudo chown ubuntu /var/www/html/imagick.sh > /tmp/update.txt

#Downloading composer
sudo curl -sS https://getcomposer.org/installer | sudo php > /tmp/update.txt

sudo php composer.phar require aws/aws-sdk-php > /tmp/update.txt

sudo mv vendor /var/www/html > /tmp/update.txt

sudo service apache2 restart > /tmp/update.txt

echo "Hello!" > /tmp/hello.txt
