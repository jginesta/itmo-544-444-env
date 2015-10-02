#!bin/bash

sudo apt-get update -y

sudo apt-get install -y apache2 git

git clone https://github.com/jginesta/itmo544-444-fall2015.git
git clone https://github.com/jginesta/itmo-544-444-env.git
git clone https://github.com/jginesta/itmo-544-444-app

mv ./itmo544-444-fall2015/images /var/www/html/images

mv ./itmo544-444-fall2015/index.html /var/www/html

echo "Hello!" > /tmp/hello.txt
