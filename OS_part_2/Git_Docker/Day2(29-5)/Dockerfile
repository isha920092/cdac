# Use Tomcat 9 as base image
FROM tomcat:9

# Install MySQL client
RUN apt-get update && \
    apt-get install -y mysql-client && \
    rm -rf /var/lib/apt/lists/*

# Expose port 8080
EXPOSE 8080

