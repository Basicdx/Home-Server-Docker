# recupere et copy root.crt vers home
docker exec caddy ls -l /data/caddy/pki/authorities/local/
docker cp caddy:/data/caddy/pki/authorities/local/root.crt ~/caddy-root.crt

# copy to certificates folder
sudo cp ~/caddy-root.crt /usr/local/share/ca-certificates/caddy-root.crt
sudo update-ca-certificates
