#!/bin/bash

# Load encrypted environment variables using sops
if command -v sops &> /dev/null; then
    if [ -f "$HOME/.config/secrets/env.yaml" ]; then
        eval "$(sops -d "$HOME/.config/secrets/env.yaml" | yq eval 'to_entries | .[] | "export " + .key + "=\"" + .value + "\""' -)"
    fi
fi
