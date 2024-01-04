#!/bin/sh
# server_script.sh

mkdir -p /app/data
touch /app/data/received_data.txt

# Start netcat in server mode, listening on port 1234
nc -l -p 1234 > /app/data/received_data.txt
