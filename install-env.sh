#!bin/bash

sudo apt-get update -y

sudo apt-get install -y apache2 git

git clone https://github.com/jginesta/itmo544-444-fall2015.git /tmp/web/

sudo mv /tmp/web/* /var/www/html/

sudo service apache2 restart

echo "Hello!" > /tmp/hello.txt
