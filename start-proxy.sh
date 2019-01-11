#!/usr/bin/env bash

docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/conf/traefik.toml:/traefik.toml \
  -v $PWD/conf/cropmanager.json:/cropmanager.json \
  -p 80:80 \
  -p 443:443 \
  -l traefik.frontend.rule=Host:monitor.tsobu.geek \
  -l traefik.port=8080 \
  --network web \
  --name traefik \
  traefik:latest --docker