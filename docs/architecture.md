# Architecture

## 📁 STRUCTURE
```text
home-server-docker/
├── compose/
│   ├── service_name/
│   │      ├── config
│   │      ├── data
│   │      ├── compose.yml
│   │      ├── .env
│   └      └── .secrets
│
├── backups/
├── docs/
│   ├── architecture.md
│   ├── decisions.md
│   └── services.md
└── templates/

mnt/data/
├── media/
├── downloads/
├── photos/
```

## 🌐 NETWORKS
```text
- frontend_net -> User-facing applications
        ( jellyfin, homepage, vaultwarden, immich, nextcloud )
- backend_net -> Internal services
        ( postgreSQL, redis, crowdsec, internal services )
- download_net -> Isolated torrent / arr
        ( qbitorrent, gluten, arr stack )
- media_net -> (optionnel)
```

## 🧱 WORKFLOW
```text
Internet
   │
   ▼
Cloudflare DNS (DNS-only, pas de proxy)
   │
   ▼
Caddie (Reverse Proxy + TLS Termination)
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
   ├── Tailscale/WireGuard (VPN pour accès distant)
   └── AdGuard Home/Pi-hole (DNS + blocage pubs)
```
