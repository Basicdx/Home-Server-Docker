# 🧾 Architecture Decisions Log

## 🔹 Decision: one stack per domain service

Reason:
- easier to install

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
- frontend_net
- backend_net
- download_net

Reason:
- enough isolation without complexity explosion

---

## 🔹 Decision: Git stores only configuration

Reason:
- security
- portability
- reproducibility
