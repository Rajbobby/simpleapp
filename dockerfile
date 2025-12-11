FROM tomcat:9-jdk11

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Create ROOT directory
RUN mkdir -p /usr/local/tomcat/webapps/ROOT

# Copy only app files into ROOT
COPY index.jsp /usr/local/tomcat/webapps/ROOT/
COPY README.md /usr/local/tomcat/webapps/ROOT/
COPY WEB-INF /usr/local/tomcat/webapps/ROOT/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
