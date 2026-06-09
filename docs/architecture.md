# Architecture

réseaux Docker
choix structure
règles compose
décisions importantes

## 📁 STRUCTURE
```text
home-server-docker/
├── compose/
│   ├── core.yml
│   ├── media.yml
│   ├── downloads.yml
│   ├── security.yml
│
├── app_data/
│   ├── jellyfin/
│   ├── immich/
│   ├── vaultwarden/
│   ├── adguardhome/
│   ├── qbittorrent/
│   ├── homepage/
│   ├── dockge/
│   ├── tailscale/
│
├── storage/
│   ├── media/
│   ├── downloads/
│   ├── photos/
│
├── backups/
├── docs/
│   ├── architecture.md
│   ├── decisions.md
│   └── services.md
└── templates/
```


# 🌐 NETWORKS
```text
- frontend_net -> User-facing applications
        ( jellyfin, homepage, vaultwarden, immich, nextcloud )
- backend_net -> Internal services
        ( postgreSQL, redis, crowdsec, internal services )
- download_net -> Isolated torrent / arr
        ( qbitorrent, gluten, arr stack )
- media_net -> (optionnel)
```

# 🧱 WORKFLOW
```text
Internet
   │
   ▼
Cloudflare DNS (DNS-only, pas de proxy)
   │
   ▼
Traefik v3 (Reverse Proxy + TLS Termination)
   │
   ├── CrowdSec (Bouncer pour bloquer les IPs malveillantes)
   │
   └── Authelia (2FA / SSO pour tous les services exposés)
       │
       ├── 🌐 Services Publics (protegés par Authelia)
       │   ├── Nextcloud (stockage + docs)
       │   ├── Immich (photos/vidéos)
       │   ├── Navidrome (musique)
       │   ├── Jellyfin (médias)
       │   ├── Jellyseerr/Overseerr (requêtes médias)
       │   ├── Homarr/Dashy (dashboard)
       │   └── Portainer (gestion Docker)
       │
       └── 🔒 Services VPN-only (accès interne ou via VPN)
           ├── qBittorrent + Gluetun (torrent via VPN)
           ├── Sonarr/Radarr/Prowlarr (Arr Stack)
           ├── Bazarr (sous-titres)
           └── Syncthing (sync fichiers)
   │
   ├── WireGuard/Tailscale (VPN pour accès distant)
   └── Pi-hole/AdGuard Home (DNS + blocage pubs)
```
