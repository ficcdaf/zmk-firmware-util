#!/bin/bash

echo "backing up"
cp zmk/app/build/left/zephyr/zmk.uf2 ./left-firmware.uf2
cp zmk/app/build/right/zephyr/zmk.uf2 ./right-firmware.uf2
