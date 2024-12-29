#!/bin/bash

if [[ -n "$ZMK_CONTAINER_ID" && "$ZMK_CONTAINER_ID" != "null" ]]; then
  docker exec -w /workspaces/zmk "$ZMK_CONTAINER_ID" /bin/bash -c 'west build -d build/left -b nice_nano_v2 -- -DSHIELD="corne_left;nice_view_adapter;nice_view" -DZMK_CONFIG="/workspaces/zmk-config/config" -DZMK_EXTRA_MODULES="/workspaces/zmk-config"'
  docker exec -w /workspaces/zmk "$ZMK_CONTAINER_ID" /bin/bash -c 'west build -d build/right -b nice_nano_v2 -- -DSHIELD="corne_right;nice_view_adapter;nice_view" -DZMK_CONFIG="/workspaces/zmk-config/config" -DZMK_EXTRA_MODULES="/workspaces/zmk-config"'
else
  echo "failed to run command"
  exit 1
fi
