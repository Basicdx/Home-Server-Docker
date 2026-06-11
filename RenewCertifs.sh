#!/bin/bash
# /data/scripts/renew-tailscale-certs.sh
# a ajouter a cron

# Régénère tous les certificats
tailscale cert jellyfin.imac-home-server.tail1234.ts.net
tailscale cert photos.imac-home-server.tail1234.ts.net
tailscale cert vault.imac-home-server.tail1234.ts.net
tailscale cert home.imac-home-server.tail1234.ts.net
tailscale cert dockge.imac-home-server.tail1234.ts.net

# Redémarre Caddy
docker restart caddy
