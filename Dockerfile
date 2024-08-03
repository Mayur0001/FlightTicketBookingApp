# Use an official Tomcat runtime as a parent image
FROM tomcat:8.5-jdk11-openjdk-slim

# Set the working directory
WORKDIR /usr/local/tomcat

# Copy the WAR file to the webapps directory
COPY target/AirLineTicketBooking.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
