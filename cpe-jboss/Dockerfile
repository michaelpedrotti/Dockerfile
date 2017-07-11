FROM openjdk:7-jdk-alpine
MAINTAINER Michael Pedrotti <michael.pedrotti@jointecnologia.com.br>

ENV JBOSS_HOME "/usr/local/jboss"
ENV JBOSS_VERSION "7.3.0.Final-redhat-14"

COPY "./jboss-eap-6.2.tar.gz" "/usr/local/jboss-eap-6.2.tar.gz"
COPY "./jboss-init.sh" "/jboss-init.sh"
COPY "./jboss-clean.sh" "/jboss-clean.sh"

RUN mkdir -p "/usr/local/jboss"
RUN tar xzvf "/usr/local/jboss-eap-6.2.tar.gz" -C "/usr/local/jboss" --strip 1 1>/dev/null
RUN rm -fR "/usr/local/jboss-eap-6.2.tar.gz"

COPY "./standalone.xml" "/usr/local/jboss/standalone/configuration/standalone.xml"
COPY "./jdbcx/jtds-1.3.1.jar" "/usr/local/jboss/modules/net/sourceforge/jtds/main/jtds-1.3.1.jar"
COPY "./jdbcx/module.xml" "/usr/local/jboss/modules/net/sourceforge/jtds/main/module.xml"

RUN echo 'export JAVA_OPTS="-Denv=dev '$JAVA_OPTS' -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n"' >> "/root/.bashrc"
RUN echo 'export PATH="$PATH:/usr/local/jboss/bin"' >> "/root/.bashrc"

ENV PATH "$PATH:/usr/local/jboss/bin"
ENV JAVA_OPTS "-Denv=dev $JAVA_OPTS -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n"

RUN chmod 0777 "/jboss-init.sh" "/jboss-clean.sh"

EXPOSE 8080
EXPOSE 8787

WORKDIR "/usr/local/jboss"

CMD ["/jboss-init.sh"]
