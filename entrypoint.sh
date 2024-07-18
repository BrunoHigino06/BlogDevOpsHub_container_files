#!/bin/bash
set -e

# Connection simulator on the database
connection_simulator() {
  connection= mysqladmin ping -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" --silent

  while $connection; do
    echo "Connection done!"
    echo "Connection done!" >> ./var/tmp/conection_log_file.txt
    sleep 5
  done
}

# Execute the connection simulator in backgroud
connection_simulator &

# Start nginx
exec nginx -g 'daemon off;'