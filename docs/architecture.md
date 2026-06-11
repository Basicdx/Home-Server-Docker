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
├── compose/
│   ├── service_name/
│   │      ├── compose.yml
│   │      ├── .env
│   └      └── .secrets
├── data/
│   ├── service_name/
│   │      ├── config
│   │      ├── data
│   └      └── cache
├── docs/
│   ├── architecture.md
│   ├── decisions.md
│   └── services.md
├── scripts/
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
AdGuard = "Comment trouver une adresse ?"
Tailscale = "Comment rejoindre cette adresse ?"
Caddy = "Comment servir le site HTTPS ?"

Server
LAN IP       : 192.168.1.x
Tailscale IP : 100.x.x.x
Tailnet      : monserveur.ts.net

Configuration:
Routeur: DNS -> 192.168.x.x
Tailscale: DNS server -> 100.x.x.x

Internet
   │
request
https://home.mytailnet.ts.net
   │
   ▼
Tailscale/WireGuard (VPN pour accès distant) Utilise AdGuard comme DNS
   │
associate name to Tailscale IP
home.mytailnet.ts.net = 100.x.x.x
   │
   ▼
AdguardHome:53 (DNS resolver) home.home.arpa?
   │
associate name to Local IP
home.mytailnet.ts.net = 192.168.1.x
   │
   ▼
Caddie:443 (Reverse Proxy + TLS Termination + HTTPS )
   │
associate name to port
home.mytailnet.ts.net = homeport
http://192.168.1.x:homeport
   │
   ├── # CrowdSec (Bouncer pour bloquer les IPs malveillantes)
   │
   └── # Authentik (2FA / SSO pour tous les services exposés)
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
   └── AdGuard Home/Pi-hole (DNS + blocage pubs)
```
