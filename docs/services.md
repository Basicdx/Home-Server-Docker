# 📦 Services Overview

## 🧱 MONITORING

| Docker | Description | Alternative |
| --- | --- | --- |
| `Dockge` | Docker management | Portainer |
| `Homepage` | Dashboard | Homarr, Dashy |

- Uptime Kuma → Monitoring
- 🚢 Watchtower → Maj Docker Container
- Grafana
- Prometheus
- Renovate??? → Maj docker image via PR Github
- MergeFS??? → Merge disks

---

## 🔐 SECURITY & REVERSE PROXY

| Docker | Description | Alternative |
| --- | --- | --- |
| `Tailscale` | VPN remote access | Wireguard |
| `Adguard Home` | DNS filtering | Pihole |
| `Caddy` | reverse proxy + TLS Termination + auto-HTTPS | Traefic, Nginx |

### NO OBLIGATORY (Already covered by Tailscale + Caddy)
- ?Cloudflare → DNS-only, no proxy (or Duckdns free)
- CrowdSec → block malware IP (replace Fail2ban)
- Authelia → 2FA / SSO for services (Authentik more heavy)

---

## 🎬 MEDIA

| Docker | Description | Alternative |
| --- | --- | --- |
| `Jellyfin` | video streaming | Plex |
| `Navidrome` | music player | |
| `Immich` | photo manager | Photoprism |

---

## ☁️ CLOUD

- Syncthing → files synchronisation
- Vaultwarden → password manager
- (Nextcloud → personal cloud, trop gourmand en ram)

---

## ⬇️ DOWNLOADS
- ⬇️ Qbitorrent → torrent
- 🔄 qBittorrent Port Forwarder → 
- Gluetun → VPN client for torrent
- Arr Stack → automation

---

## SERVARR
- FlareSolverr → Bypasses Cloudflare protection for Indexers
- 🔍 Prowlarr → Indexer centralized management
- Lidarr → Music
- 🎬 Radarr → Movies
- 📺 Sonarr → TV Shows
- Bazarr → Subtitles
- 📦 Unpackerr → Unpacking files

---

##  IA

- Ollama / LMStudio
- OpenWebUI
- Hermes Agent / Openclaw

---

## AUTOMATISATION

- Node-RED (or Home Assistant)
