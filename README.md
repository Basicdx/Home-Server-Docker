# 🏠 Homelab Docker Stack

This repository contains my personal homelab infrastructure running on an iMac 2010.

The goal is to keep everything:

- simple
- reproducible
- maintainable
- fully Docker-based
- relative path to be transportable

---

## 🧠 Philosophy

- YAML Stacks
- Git stores configuration only (no data)
- Docker is the runtime
- Dockge is used for management
- Simplicity over complexity (no Kubernetes, no Swarm)

---

# Architecture

réseaux Docker, choix structure, règles compose, décisions importantes

## ⚠️ Hardware constraints

Target system:

- iMac 2010
- 16GB RAM
- SSD system disk

No heavy workloads unless optimized.
