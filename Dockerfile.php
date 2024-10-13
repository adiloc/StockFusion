# Use PHP with Nginx
FROM php:8.1-fpm

# Set working directory
WORKDIR /var/www/html

# Copy application code
COPY ./html /var/www/html

# Expose the PHP-FPM port
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm", "--nodaemonize"]
