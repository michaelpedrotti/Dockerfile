#!/bin/bash

/bin/quickstart &

# Inicialização do servidor web
/usr/sbin/httpd -DFOREGROUND
