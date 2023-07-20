FROM tomcat

ADD configuration/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

ADD configuration/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY target/FitnessTracker.war /usr/local/tomcat/webapps/

RUN sh /usr/local/tomcat/bin/startup.sh

