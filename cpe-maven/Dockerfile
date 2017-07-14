FROM maven:3.5-jdk-8-alpine 
MAINTAINER Michael Pedrotti <michael.pedrotti@jointecnologia.com.br>
RUN mkdir -p /root/.m2/repository
COPY ./repository /root/.m2/repository
COPY ./settings.xml /root/.m2/settings.xml
RUN chmod +rw /root/.m2/ -R
CMD tail -f /dev/null
