
FROM tomcat:9-jdk11-openjdk
COPY target/*.war /usr/local/tomcat/webapps/
RUN sed -i 's/8080/8000/g' /usr/local/tomcat/conf/server.xml
EXPOSE 8000
