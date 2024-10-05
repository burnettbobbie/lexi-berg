# Use an official PHP runtime as the base image
FROM php:7.4-apache

# Enable mod_rewrite for pretty URLs
RUN a2enmod rewrite

# Set the working directory in the container
WORKDIR /var/www/html

# Copy all the files from the current directory to the working directory in the container
COPY . /var/www/html/

# Give appropriate permissions to the copied files
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80
