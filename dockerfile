# Use the official WordPress image from Docker Hub
FROM wordpress:latest

# Install MySQL client to connect to the external database
RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    rm -rf /var/lib/apt/lists/*

# Set up custom entrypoint to wait for the MySQL service to be available
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

# Start WordPress with Apache as the server
CMD ["apache2-foreground"]