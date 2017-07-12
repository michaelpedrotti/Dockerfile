FROM maven:3.5-jdk-8-alpine 
MAINTAINER Michael Pedrotti <michael.pedrotti@jointecnologia.com.br>
RUN mkdir -p /root/.m2/repository
COPY ./repository /root/.m2/repository
COPY ./maven-sync-repository.sh /etc/periodic/15min/maven-sync-repository.sh
COPY ./init.sh /init.sh
RUN chmod o+rwx /etc/periodic/15min/maven-sync-repository.sh
RUN chmod o+rwx ./init.sh
RUN apk update
RUN apk add rsync
CMD /init.sh
