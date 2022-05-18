#!/bin/bash

docker run -d \
--name "portainer_app_1" \
--restart "unless-stopped" \
--network "proxy" \
-p "9000:9000" \
-v "/var/run/docker.sock:/var/run/docker.sock" \
-v "/mnt/user/appdata/portainer:/data" \
-l "traefik.enable=true" \
-l "traefik.http.routers.portainer.entrypoints=websecure" \
-l "traefik.http.routers.portainer.rule=Host(\"portainer.domain\")" \
-l "traefik.http.services.portainer.loadbalancer.server.port=9000" \
portainer/portainer-ce:latest