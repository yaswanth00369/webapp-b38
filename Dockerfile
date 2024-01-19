# Use an official Apache base image
FROM httpd:latest

# Set the working directory to the Apache document root
WORKDIR /usr/local/apache2/htdocs

# Copy the local index.html file into the container at /usr/local/apache2/htdocs/
COPY * .

# Expose port 80 for the Apache web server
EXPOSE 80
