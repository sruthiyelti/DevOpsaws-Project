

FROM sruthicloud/tomcat8
MAINTAINER SRUTHI
RUN wget https://viveksruthi123.s3-us-west-2.amazonaws.com/DevOpsRocks.war
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
WORKDIR /usr/local/tomcat/bin
CMD catalina.sh run

