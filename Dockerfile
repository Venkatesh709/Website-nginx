# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Set environment variable to non-interactive to avoid prompts during package installation
#ENV DEBIAN_FRONTEND=noninteractive

# Update and install Nginx
RUN apt update -y
RUN apt install nginx -y

# Remove default server definition
#RUN rm /etc/nginx/sites-enabled/default

# Copy your custom HTML code to the Nginx default directory
COPY ./index.html /var/www/html/index.html

# Expose port 80
EXPOSE 8085

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]

