#!/bin/bash
# /data/scripts/renew-tailscale-certs.sh
# a ajouter a cron

# Régénère tous les certificats
tailscale cert jellyfin.poppi.akita-diatonic.ts.net
tailscale cert photos.poppi.akita-diatonic.ts.net
tailscale cert vault.poppi.akita-diatonic.ts.net
tailscale cert home.poppi.akita-diatonic.ts.net
tailscale cert dockge.poppi.akita-diatonic.ts.net

# Redémarre Caddy
docker restart caddy
