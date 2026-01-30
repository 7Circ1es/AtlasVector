#!/bin/bash
# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"
echo "Starting local server in: $SCRIPT_DIR"
python3 -m http.server 8080 &
sleep 2
echo "Starting ngrok..."
ngrok http 8080
