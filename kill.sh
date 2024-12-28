#!/bin/bash

if [[ -n "$ZMK_CONTAINER_ID" && "$CONTAINER_ID" != "null" ]]; then
  echo "Killing: $CONTAINER_ID"
  docker stop "$ZMK_CONTAINER_ID"
else
  echo "Error: Failed to kill $ZMK_CONTAINER_ID."
  exit 1
fi
