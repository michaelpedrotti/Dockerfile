FROM centos:5.11
COPY join.conf /etc/httpd/conf.d/join.conf
COPY join.ini /etc/php.d/join.ini
COPY init.sh /init.sh
COPY utter-ramblings.repo /etc/yum.repos.d/utter-ramblings.repo
RUN yum -y update
RUN yum -y install httpd 
RUN yum -y install php php-pgsql php-gd php-odbc php-pear php-xml php-xmlrpc php-mbstring php-soap
RUN chmod 0777 /init.sh
EXPOSE 80
CMD ["/init.sh"]

