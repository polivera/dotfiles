#!/bin/bash

# Load encrypted environment variables using sops
if command -v sops &> /dev/null && command -v yq &> /dev/null; then
    if [ -f "$HOME/.config/secrets/env.yaml" ]; then
        eval "$(sops -d "$HOME/.config/secrets/env.yaml" | yq eval 'to_entries | .[] | "export " + .key + "=\"" + .value + "\""' -)"
    fi
else
    echo "sops and/or yq are not installed"
fi
