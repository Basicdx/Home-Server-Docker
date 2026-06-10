# Architecture

```text
- Minimal complexity
- Local-first
- Git = infrastructure backup only
- Docker = runtime
- Data = outside repo
```

## 📁 STRUCTURE
```text
home-server-docker/
├── compose/        # Infrastructure
│   ├── service_name/
│   │      ├── compose.yml
│   │      ├── .env
│   └      └── .secrets
├── data/        # App data
│   ├── service_name/
│   │      ├── config
│   │      ├── data
│   └      └── cache
├── docs/        # Documentation
│   ├── architecture.md
│   ├── decisions.md
│   └── services.md
├── scripts/        # Automatisation
│   ├── backup.sh
│   ├── restore.sh
│   ├── update-all.sh
│   ├── stop-all.sh
│   └── healthcheck.sh
├── backups/
└── templates/

mnt/data/
├── media/
├── downloads/
├── photos/
```

## 🌐 NETWORKS
```text
- frontend -> User-facing applications
        ( jellyfin, homepage, vaultwarden, immich, nextcloud )
- backend -> Internal services
        ( postgreSQL, redis, crowdsec, internal services )
- download -> Isolated torrent / arr
        ( qbitorrent, gluten, arr stack )
- media -> (optionnel)
- ai -> manage AI 
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
   └── Authentik (2FA / SSO pour tous les services exposés)
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
