#!/bin/bash

# Load encrypted environment variables using sops
if command -v sops &> /dev/null && command -v yq &> /dev/null; then
    if [ -f "$HOME/.config/secrets/env.yaml" ]; then
        # Detect yq version (mikefarah's yq vs Python yq)
        if [[ "$XAP_OS" == "macos" ]]; then
            # mikefarah's yq (Go version) - used on Mac
            eval "$(sops -d "$HOME/.config/secrets/env.yaml" | yq eval 'to_entries | .[] | "export " + .key + "=\"" + .value + "\""' -)"
        else
            # Python yq (jq wrapper) - common on Linux
            eval $(sops -d "$HOME/.config/secrets/env.yaml" | yq -r 'to_entries | .[] | "export \(.key)=\"\(.value)\""')
        fi
    fi
else
    echo "sops and/or yq are not installed"
fi
