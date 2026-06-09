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

# Documentation
- [docs/architecture.md](docs/architecture.md)
- [docs/decisions.md](docs/decision.md)
- [docs/services.md](docs/services.md)

---

## ⚠️ Hardware constraints

Target system:

- iMac 2010
- 16GB RAM
- SSD system disk

No heavy workloads unless optimized.
