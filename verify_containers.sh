#!/bin/bash

docker-compose up -d container_a

docker-compose up -d container_b

echo "Sleep for 10 sec..."
sleep 10

docker exec -it docker2-container_b-1 nc -zv docker2-container_a-1 1234

docker exec -it docker2-container_a-1 cat /app/data/received_data.txt

docker logs docker2-container_a-1

docker logs docker2-container_b-1
