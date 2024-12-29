#!/bin/bash

if [[ "$#" -eq 1 && $1 == "left" || $1 == "right" ]]; then
  echo "Flashing: $1"
  cp zmk/app/build/"$1"/zephyr/zmk.uf2 /run/media/fic/NICENANO
else
  echo "Provide either 'left' or 'right'!"
  exit 1
fi
