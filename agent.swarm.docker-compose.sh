#!/bin/bash
# Load environments
# -- set +a- marking allowed on export
set -a && source portainer.env && set +a


# CD Deploy stack
docker stack deploy --compose-file ./agent.swarm.docker-compose.yaml --prune stack_agent-swarm-portainer

# WAIT ready replicas n containers < 4
while [ "$(docker stack ps "stack_agent-swarm-portainer" --format '{{.CurrentState}}' | grep  'Running' | wc -l)" -le 1 ]; do
  echo "Waiting for stack to be ready..."
  sleep 2
done
