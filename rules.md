# Homelab Rules

## Global philosophy
- Keep the homelab SIMPLE
- Prefer one service = one Docker Compose stack
- Avoid over-engineering (no Kubernetes, no Swarm)
- Everything must remain understandable in 6 months

---

## Docker standards
- Always use docker compose (not docker run)
- One service per compose.yml
- Always restart: unless-stopped
- Always define:
  - TZ=Europe/Paris
  - PUID=1000
  - PGID=1000 (if needed)
- Never expose unnecessary ports
- Use networks:
  - frontend_net (user-facing services)
  - backend_net (databases/internal)
  - download_net (torrent/arr stack)

---

## Volume rules
- Application config stays in:
  ./config or ./data inside compose folder
- Media/data goes outside repo:
  /mnt/storage (HDD)
- Never store large media inside Git repo

---

## Security rules
- Prefer internal networks over exposed ports
- Use reverse proxy (Caddy) for public access
- Vaultwarden is critical service → always isolated
- No container should run as root unless necessary
- Always include:
  security_opt:
    - no-new-privileges:true

---

## Naming conventions
- One folder per service:
  compose/service_name/
- Compose file always named:
  compose.yml

---

## Architecture principles
- Minimal complexity
- Local-first
- Git = infrastructure backup only
- Docker = runtime
- Data = outside repo

---

## Hardware constraints
- Target machine: iMac 2010
- Avoid heavy AI / GPU workloads
- Immich, Jellyfin must be optimized for low CPU usage
- Frigate only with hardware acceleration (future)
