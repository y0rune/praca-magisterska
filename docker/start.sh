#!/bin/bash
for i in $(docker ps --all | grep -i mgr| awk '{print $1}'); do
	docker stop "$i"
	docker rm "$i"
done
docker-compose -f docker-compose.yml up
