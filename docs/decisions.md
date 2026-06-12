# 🧾 Architecture Decisions Log

## 🧠 Philosophy

- compose = infrastructure
- data = données applicatives
- backups = sauvegardes
- scripts = automatisation
- docs = documentation

- YAML Stacks
- Git stores configuration only (no data)
- Docker is the runtime
- Dockge is used for management
- Simplicity over complexity (no Kubernetes, no Swarm)

## 🔹 Decision: One service per Docker Compose

Reason:

- easier debugging
- easier updates
- better isolation
- compatible with Dockge

---

## 🔹 Decision: No Kubernetes

Reason:

- overkill for single-node homelab
- increases complexity without benefit

---

## 🔹 Decision: External data storage

Reason:

- prevents repo bloat
- enables easy backups
- avoids Git performance issues

---

## 🔹 Decision: Minimal network segmentation

Networks:

- frontend
- backend
- download
- ai

Reason:

- enough isolation without complexity explosion

---

## 🔹 Decision: Git stores only configuration

Reason:

- security
- portability
- reproducibility
