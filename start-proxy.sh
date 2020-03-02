#!/bin/bash
docker ps -aq

docker stop $(docker ps -aq)

docker rm $(docker ps -aq)
