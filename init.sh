#!/bin/bash

WORKSPACE_FOLDER="/home/fic/keyboard/firmware/zmk"
ZMK_CONTAINER_ID=$(devcontainer up --workspace-folder "$WORKSPACE_FOLDER" | jq -r '.containerId')
# Check if a valid container ID was returned

if [[ -n "$ZMK_CONTAINER_ID" && "$CONTAINER_ID" != "null" ]]; then
  echo "Attaching to container ID: $ZMK_CONTAINER_ID"
  export ZMK_CONTAINER_ID
  docker exec -w /workspaces/zmk -it "$ZMK_CONTAINER_ID" /bin/bash
else
  echo "Error: Failed to start the devcontainer or retrieve the container ID."
  exit 1
fi
