#!/bin/sh
# client_script.sh

# Wait for the server to start
sleep 5

echo "Hello from client!" | nc docker2-container_a-1 1234
