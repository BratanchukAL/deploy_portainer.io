# deploy_portainer.io
Deploy portainer with server and agents

Server:

    docker compose --file server.docker-compose.yaml  --env-file ./portainer.env  up -d --force-recreate --remove-orphans
    
https://localhost:9443

Agent:
    
    docker compose --file agent.docker-compose.yaml  --env-file ./portainer.env  up -d --force-recreate --remove-orphans

# Versions compatibility remote deploy by git
- portainer-ce:2.21.5

# TODO
P-1: server and agent
