
FROM sruthicloud/tomcat8
MAINTAINER yeltisruthireddy@gmail.com
RUN apt-get update
RUN aws s3 cp s3://viveksruthi123/DevOpsRocks.war /usr/local/tomcat/webapps 
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]



