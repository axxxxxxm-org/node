#!/bin/bash

# Image name to kill containers from
IMAGE_NAME="lunacrafts/axxxxxxm-core"

# Get container IDs for containers running from the specified image
CONTAINER_IDS=$(docker ps --filter "ancestor=$IMAGE_NAME" --format "{{.ID}}")

# Check if any containers were found
if [ -z "$CONTAINER_IDS" ]; then
  echo "No running containers found for image $IMAGE_NAME"
else
  # Kill the containers
  for CONTAINER_ID in $CONTAINER_IDS; do
    echo "Killing container $CONTAINER_ID"
    docker kill $CONTAINER_ID
  done
fi

sudo rm -rf /home/runner/node/witness_node_data_dir
