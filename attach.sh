#!/bin/bash

if [[ "$#" -eq 1 ]]; then
  ZMK_CONTAINER_ID="$1"
fi
if [[ -n "$ZMK_CONTAINER_ID" && "$ZMK_CONTAINER_ID" != "null" ]]; then
  echo "Attaching to container ID: $ZMK_CONTAINER_ID"
  docker exec -w /workspaces/zmk -it "$ZMK_CONTAINER_ID" /bin/bash
else
  echo "failed to attach"
  exit 1
fi
