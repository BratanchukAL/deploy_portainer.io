# deploy_portainer.io
Deploy portainer with server and agents

Server:

    docker compose --file server.docker-compose.yaml  --env-file ./portainer.env  up -d --force-recreate --remove-orphans
    
https://localhost:9443

Agent:
    
    docker compose --file agent.docker-compose.yaml  --env-file ./portainer.env  up -d --force-recreate --remove-orphans

# TODO
P-1: server and agent
