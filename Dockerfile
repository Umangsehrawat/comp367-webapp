FROM tomcat:9.0

COPY target/comp367-webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080
