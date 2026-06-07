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
    ├── app
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
```text
    - **frontend_net** -> UI / apps exposed
        ( jellyfin, homepage, vaultwarden, immich, nextcloud )
    - **backend_net** -> DB / internal services
        ( postgreSQL, redis, crowdsec, internal services )
    - **download_net** -> torrent / arr
        ( qbitorrent, gluten, arr stack )
    - **media_net** -> (optionnel)
```text
