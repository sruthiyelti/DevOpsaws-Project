FROM sruthicloud/tomcat8
MAINTAINER SRUTHI
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
WORKDIR /usr/local/tomcat/bin
CMD catalina.sh run

