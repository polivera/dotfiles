#!/bin/bash

# Script to fetch and parse a file from Google Cloud Storage based on JSON input
# Usage: echo '{"key": "...", "bucket": "...", "compressed": "gzip"}' | ./gcs-cat.sh
# Or: ./gcs-cat.sh '{"key": "...", "bucket": "...", "compressed": "gzip"}'

set -e

# Read input from argument or stdin
if [ -n "$1" ]; then
    INPUT="$1"
else
    INPUT=$(cat)
fi

# Parse JSON input
BUCKET=$(echo "$INPUT" | jq -r '.bucket')
KEY=$(echo "$INPUT" | jq -r '.key')
COMPRESSED=$(echo "$INPUT" | jq -r '.compressed // empty')

# Validate required fields
if [ -z "$BUCKET" ] || [ "$BUCKET" = "null" ]; then
    echo "Error: 'bucket' is required" >&2
    exit 1
fi

if [ -z "$KEY" ] || [ "$KEY" = "null" ]; then
    echo "Error: 'key' is required" >&2
    exit 1
fi

# Build GCS path
GCS_PATH="gs://${BUCKET}/${KEY}"

# Fetch and optionally decompress
if [ "$COMPRESSED" = "gzip" ]; then
    gcloud storage cat "$GCS_PATH" | gunzip | jq .
else
    gcloud storage cat "$GCS_PATH" | jq .
fi
