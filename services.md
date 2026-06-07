# 📦 Services Overview

## 🧱 MONITORING
- Dockge → Docker management
- Homepage → dashboard (or Homarr, Dash)
- Uptime Kuma → monitoring

---

## 🔐 SECURITY & REVERSE PROXY
- ?Cloudflare → DNS-only, no proxy
- Traefic → reverse proxy + TLS Termination (or Caddy auto-HTTPS, or Nginx) 
- Tailscale → remote access (or Wireguard)
- AdGuard Home → DNS filtering (or Pihole)
- CrowdSec → block malware IP
- Authelia → 2FA / SSO for services

---

## 🎬 MEDIA

- Jellyfin → video streaming
- Navidrome → music server
- Immich → photo management

---

## ☁️ CLOUD

- Nextcloud → personal cloud
- Syncthing → files synchronisation
- Vaultwarden → password manager

---

## ⬇️ DOWNLOADS
- Qbitorrent → downloads
- Gluetun → VPN routing
- Arr Stack → automation

---

## SERVARR
  - Prowlarr → indexer manager
  - Radarr → 
  - Sonarr → 
  - Bazarr → subtitles manager
  - Lidarr → 
---

## 🧠 Notes

All services are deployed as independent Docker Compose stacks.
