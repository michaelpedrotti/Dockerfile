#!/bin/bash

# Inicialização do servidor web

if [ ! -d "/var/www/html/vendor" ]; then
	/bin/php
fi


/usr/sbin/httpd -DFOREGROUND
