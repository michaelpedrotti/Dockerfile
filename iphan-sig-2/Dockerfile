FROM centos:6.8
COPY "join.conf" "/etc/httpd/conf.d/join.conf"
COPY "join.ini" "/etc/php.d/join.ini"
COPY "composer.sh" "/bin/composer"
COPY "artisan.sh" "/usr/local/bin/artisan"
COPY "init.sh" "/init.sh"
RUN rpm -Uvh ftp://mirror.switch.ch/pool/4/mirror/epel/6/x86_64/libmcrypt-2.5.8-9.el6.x86_64.rpm
RUN rpm -Uvh "https://mirror.webtatic.com/yum/el6/latest.rpm"
RUN yum install -y httpd
RUN yum install -y php56w php56w-gd php56w-mbstring php56w-mcrypt php56w-pdo php56w-pgsql php56w-soap php56w-xml php56w-xmlrp php56w-pecl-xdebug
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer.phar
RUN chmod 0777 /init.sh /usr/local/bin/artisan /bin/composer /usr/local/bin/composer.phar
EXPOSE 80
CMD ["/init.sh"]
