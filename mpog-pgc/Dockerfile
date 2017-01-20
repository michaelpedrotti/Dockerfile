FROM php:5.6-apache
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY artisan.sh /bin/artisan
COPY composer.sh /bin/composer
COPY quickstart.sh /bin/quickstart
COPY init.sh /init.sh
RUN apt-get update -y
RUN apt-get install -y libpng12-dev libjpeg-dev libghc-postgresql-libpq-dev
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr
RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd
RUN docker-php-ext-configure pgsql -with-pgsql=/usr/include/postgresql
RUN docker-php-ext-install gd
RUN docker-php-ext-install pgsql pdo_pgsql
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli​
RUN chmod 0777 /init.sh
EXPOSE 80
CMD ["/init.sh"]
