#!/usr/bin/env bash

set -xe

GH_REPO="https://github.com/Chocolate4U/Iran-v2ray-rules"
DL_BASE_URL="$GH_REPO/releases/latest/download"

DL_DIR="$(dirname "$0")/assets"

files=("geoip.dat" "geosite.dat")
for file in "${files[@]}"; do
	curl -sfSL -o "$DL_DIR/$file" "$DL_BASE_URL/$file"
done
