#!/bin/bash
# healthcheck.sh
docker ps --format "{{.Names}}" | while read -r container; do
  if [ "$(docker inspect -f '{{.State.Health.Status}}' $container 2>/dev/null)" != "healthy" ]; then
    echo "$container: UNHEALTHY"
  else
    echo "$container: OK"
  fi
done