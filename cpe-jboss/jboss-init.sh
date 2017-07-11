#!/bin/sh

# limpa os logs, config e temp do jboss
/jboss-clean.sh &

# Inicia o JBOSS
/usr/local/jboss/bin/standalone.sh
