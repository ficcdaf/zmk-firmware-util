#!/bin/bash

if [[ -n "$ZMK_CONTAINER_ID" && "$ZMK_CONTAINER_ID" != "null" ]]; then
  echo "Attaching to container ID: $ZMK_CONTAINER_ID"
  docker exec -w /workspaces/zmk -it "$ZMK_CONTAINER_ID" /bin/bash
else
  echo "failed to attach"
  exit 1
fi
