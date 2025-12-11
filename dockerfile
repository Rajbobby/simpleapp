FROM tomcat:9-jdk11

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy source code (JSP + WEB-INF)
COPY . /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
