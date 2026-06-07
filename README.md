# 🏠 Homelab Docker Stack

This repository contains my personal homelab infrastructure running on an iMac 2010.

The goal is to keep everything:

- simple
- reproducible
- maintainable
- fully Docker-based

---

## 🧠 Philosophy

- 1 service = 1 Docker Compose stack
- Git stores configuration only (no data)
- Docker is the runtime
- Dockge is used for management
- Simplicity over complexity (no Kubernetes, no Swarm)

---

## 🧱 Architecture

Core components:

- Docker + Docker Compose
- Dockge (stack manager)
- Homepage (dashboard)
- Uptime Kuma (monitoring)
- Tailscale (remote access)
- AdGuard Home (DNS)
- Caddy (reverse proxy)

---

## 🌐 Networks

- frontend_net → user-facing services
- backend_net → databases & internal services
- download_net → torrent / arr stack

---

## 📁 Structure

Each service follows:
