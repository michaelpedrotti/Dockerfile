FROM debian:jessie
MAINTAINER Michael Pedrotti <michael.pedrotti@jointecnologia.com.br>

ENV TOMCAT_HOME "/usr/local/tomcat"
ENV TOMCAT_VERSION "6.0.45"
ENV JAVA_HOME "/opt/java/jdk1.6.0_45"
ENV JAVA_VERSION "jdk1.6.0_45"

COPY ./apache-tomcat-6.0.45.tar.gz "/usr/local/apache-tomcat-6.0.45.tar.gz"

RUN mkdir -p "/usr/local/tomcat/webapps/sst"

RUN tar xzvf "/usr/local/apache-tomcat-6.0.45.tar.gz" -C /usr/local/tomcat --strip 1

COPY ./jre-6u45-linux-x64.bin "/opt/java/jre-6u45-linux-x64.bin"
COPY ./jdk-6u45-linux-x64.bin "/opt/java/jdk-6u45-linux-x64.bin"
COPY ./database.properties "/usr/local/tomcat/aplic/database.properties"
COPY ./tomcat-users.xml "/usr/local/tomcat/conf/tomcat-users.xml"

RUN chmod +x "/opt/java/jre-6u45-linux-x64.bin" "/opt/java/jdk-6u45-linux-x64.bin"

RUN "/opt/java/jre-6u45-linux-x64.bin"
RUN "/opt/java/jdk-6u45-linux-x64.bin"
RUN rm -fR *.bin

RUN echo 'export JAVA_HOME="/opt/java/jdk1.6.0_45"' >> "/root/.bashrc"
RUN echo 'export _JAVA_OPTIONS="-Xms256m"' >> "/root/.bashrc"
RUN echo 'export PATH="$PATH:/opt/java/jdk1.6.0_45/bin:/usr/local/tomcat/bin"' >> "/root/.bashrc"

EXPOSE 8080
EXPOSE 9000

WORKDIR "/usr/local/tomcat/webapps"

CMD ["/usr/local/tomcat/bin/catalina.sh jpda run"]
