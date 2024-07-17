#!/bin/bash
set -e

# Wait for the MySQL server to be ready before starting WordPress
until mysqladmin ping -h"$WORDPRESS_DB_HOST" -u"$WORDPRESS_DB_USER" -p"$WORDPRESS_DB_PASSWORD" --silent; do
  echo 'Waiting for MySQL to be ready...'
  sleep 3
done

echo 'MySQL is ready! Starting WordPress...'

# Run the default WordPress entry point script
exec docker-entrypoint.sh "$@"
