FROM centos:6.8
COPY "join.conf" "/etc/httpd/conf.d/join.conf"
COPY "join.ini" "/etc/php.d/join.ini"
COPY "init.sh" "/init.sh"
RUN rpm -Uvh "https://mirror.webtatic.com/yum/el6/latest.rpm"
RUN yum install -y httpd
RUN yum install -y php56w php56w-gd php56w-mysql php56w-pdo php56w-soap php56w-xml php56w-xmlrp
RUN chmod 0777 /init.sh
EXPOSE 80
CMD ["/init.sh"]
