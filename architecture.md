# docs/architecture.md

# Architecture

réseaux Docker
choix structure
règles compose
décisions importantes

## Project Structure
```text
home-server-docker/
├── backups/
├── compose/
    ├── adguardhome
        ├── data
        ├── config
        ├── compose.yml
        ├── .env
    ├── ...
├── docs/
        ├── architecture.md
        ├── decisions.md
        ├── services.md
├── templates/
└── .continue/
        ├── config.json
        ├── rules.md
```


# NETWORKS
frontend_net   -> UI / apps exposed
backend_net    -> DB / internal services
download_net   -> torrent / arr
media_net      -> (optionnel)
