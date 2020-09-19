
FROM sruthicloud/tomcat8
MAINTAINER yeltisruthireddy@gmail.com
RUN apt-get update
COPY https://viveksruthi123.s3-us-west-2.amazonaws.com/DevOpsRocks.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]



