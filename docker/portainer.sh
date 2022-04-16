docker run -d \
--name "portainer_app_1" \
--network "bridge" \
--restart "unless-stopped" \
-p "8000:8000" \
-p "9000:9000" \
-v "/var/run/docker.sock:/var/run/docker.sock" \
-v "/mnt/user/appdata/portainer:/data" \
portainer/portainer-ce:latest