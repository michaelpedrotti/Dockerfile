#!/bin/sh

rsync -ra --chmod=o+wr --chown=root:root "/maven-repository" "/root/.m2/repository/"
