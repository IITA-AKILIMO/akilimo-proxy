#!/bin/bash

docker run \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/conf/traefik.local.toml:/traefik.toml \
  -v $PWD/conf/acme.json:/acme.json \
  -p 80:80 \
  -l traefik.frontend.rule=Host:monitor.tsobu.com \
  -l traefik.port=8080 \
  --network web \
  --name traefik \
  traefik:1.7.2-alpine