#!/bin/bash


# Kill current, because lower memory
docker compose --file ./server.docker-compose.yaml --env-file ./portainer.env down

# build
docker compose --file ./server.docker-compose.yaml --env-file ./portainer.env build || (echo 'Error db.docker-..' && exit 1)

# up
docker compose --file ./server.docker-compose.yaml --env-file ./portainer.env up --force-recreate --remove-orphans --wait || (echo 'Error docker compose up' && exit 1)
docker compose --file ./server.docker-compose.yaml --env-file ./portainer.env ps