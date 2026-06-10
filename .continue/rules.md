# Homelab Rules

## Global philosophy

- Keep the homelab SIMPLE
- One folder per container
- No monolitic stack
- Avoid over-engineering (no Kubernetes, no Swarm)
- Everything must remain understandable in 6 months

---

## Docker standards

- Always use docker compose V2 (not docker run)
- One service (and dependancies) per compose.yml
- Always define:
````bash
  TZ=${TZ}
  PUID=${PUID}
  PGID=${PGID} (if needed)
  restart: unless-stopped
````
- Never expose unnecessary ports
- Use networks:
  - frontend (user-facing services)
  - backend (databases/internal)
  - download (torrent/arr stack)
- Store sensitive variables (API, Key, Token, Password) in Repo/secrets via secret command
- Conteneurs that access sensitives files via environment and don't need to edit can be in :ro (read-only)

---

## Volume rules

- Application config stays in:
  /config or /data inside Repo folder
- Media/data goes outside repo:
  /mnt/storage (HDD)
- Never store large media inside Git repo

---

## Security rules

- Prefer internal networks over exposed ports
- Use reverse proxy (Caddy) for public access
- Vaultwarden is critical service → always isolated
- No container should run as root unless necessary
- Limit capabilities (like NET_ADMIN, NET_RAW) to containers who absolutly need it (VPN or DNS like Tailscale, Glueten, AdGuard). And add just before:
  cap_drop:
  - ALL
- Add errors (?err) in sensitives environment variables (if needed)
- run "healthcheck:" (if needed)
- Always include:
  security_opt:
  - no-new-privileges:true
  network:
    driver: bridge
    external: true

---

## Naming conventions

- One folder per service
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

- Target machine: iMac 2010 (16Go Ram DDR3, intel i3-550, SSD Sata 1To, AMD Radeon 5730 Evergreen)
- Avoid heavy AI / GPU workloads
- Containers like Immich, Jellyfin must be optimized for low CPU usage
- Frigate only with hardware acceleration (future)

---

## Documentation

Read :

- [docs/architecture.md](docs/architecture.md)
- [docs/decisions.md](docs/decision.md)
- [docs/services.md](docs/services.md)

Quand une modification impacte l'architecture,
mettre à jour la documentation concernée.
Quand un nouveau service est ajouté,
mettre à jour la documentation concernée.

---

## Repository Access

You can use the `gh` CLI to:

- Search for issues: `gh issue list --repo basicdx/home-server-docker`
- View pull requests: `gh pr list --repo basicdx/home-server-docker`
- Clone repositories: `gh repo clone basicdx/home-server-docker`

---
