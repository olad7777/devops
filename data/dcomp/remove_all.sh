#!/bin/bash

docker rm $(docker ps -a -q); docker rmi $(docker images -q) ; docker network prune -f && docker volume prune -f
