# SSH Agent configuration
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    # Start ssh-agent if not running
    eval "$(ssh-agent -s)" &>/dev/null
fi

# Add key if not already loaded
if ! ssh-add -l | grep -q ~/.ssh/personal-key; then
    ssh-add ~/.ssh/personal-key 2>/dev/null
fi
