# Run the WAR on Tomcat 10 (Servlet 6 / Jakarta) with JDK 21
FROM tomcat:10.1-jdk21-corretto

# Clean default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as ROOT.war so the app serves from '/'
COPY modern-webapp-1.0.0.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]