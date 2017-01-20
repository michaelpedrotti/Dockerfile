#!/bin/bash

cd /var/www/html/sfmsp/

if [ ! -d "./vendor" ]; then
	php -f /var/www/html/sfmsp/composer.phar self-update
	php -f /var/www/html/sfmsp/composer.phar install 
fi

if [ ! -f "./config/autoload/global.php" ]; then
	mv "./config/autoload/global.php.dist" "./config/autoload/global.php"
fi


