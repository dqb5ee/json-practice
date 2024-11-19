#!/bin/bash

file="aviation.json"

if [[ ! -f "$file" ]]; then
  echo "Error: $file does not exist."
  exit 1
fi

receiptTime=$(jq -r '.[].receiptTime' "$file")

echo "$receiptTime" | head -n 6
