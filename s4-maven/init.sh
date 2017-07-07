#!/bin/sh

rsync -ra --chmod=o+wr --chown=1000:1000 "/root/.m2/repository/" "/maven-repository" &

crond -f &

tail -f /dev/null
