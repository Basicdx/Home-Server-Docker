# 📦 Services Overview

## 🧱 MONITORING

| Docker | Description | Alternative |
| --- | --- | --- |
| [`Dockge`](https://dockge.kuma.pet/) | Docker management | Portainer |
| [`Homepage`](https://gethomepage.dev/) | Dashboard | Homarr, Dashy |

- [Uptime Kuma](https://uptimekuma.org/) → Monitoring
- 🚢 Watchtower → Maj Docker Container
- Grafana
- Prometheus
- Renovate??? → Maj docker image via PR Github
- MergeFS??? → Merge disks

---

## 🔐 SECURITY & REVERSE PROXY

| Docker | Description | Alternative |
| --- | --- | --- |
| [`Tailscale`](https://tailscale.com/) | VPN remote access | Wireguard |
| [`Adguard Home`](https://adguard.com/) | DNS filtering | Pihole |
| [`Caddy`](https://caddyserver.com/) | reverse proxy + TLS Termination + auto-HTTPS | Traefic, Nginx |

### NO OBLIGATORY (Already covered by Tailscale + Caddy)
- ?Cloudflare → DNS-only, no proxy (or Duckdns free)
- CrowdSec → block malware IP (replace Fail2ban)
- Authelia → 2FA / SSO for services (Authentik more heavy)

---

## 🎬 MEDIA

| Docker | Description | Alternative |
| --- | --- | --- |
| [`Jellyfin`](https://jellyfin.org/) | video streaming | Plex |
| [`Navidrome`](https://www.navidrome.org/) | music player | |
| [`Immich`](https://immich.app/) | photo manager | Photoprism |

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
| Docker | Description | Alternative |
| --- | --- | --- |
| `FlareSolveer` | Bypasses Cloudflare protection for Indexers | |
| `🔍 Prowlarr` | Indexer | |
| `Lidarr` | Music | |
| `🎬 Radarr` | Movies | |
| `📺 Sonarr` | TV Shows | |
| `Bazarr` | Subtitles | |
| 📦`Unpackeer` | Unpacking files | |

---

##  IA

| Docker | Description | Alternative |
| --- | --- | --- |
| [`Ollama`](https://ollama.com/) | Local AI | LMStudio |
| [`Hermes Agent`](https://hermes-agent.nousresearch.com/) | Local AI Agent | Openclaw |
| [`OpenWebUI`](https://docs.openwebui.com/) | Web interface | Openclaw |

---

## AUTOMATISATION

- Node-RED (or Home Assistant)
