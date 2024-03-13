#!/bin/bash

# Define the SSH directory and the authorized_keys file paths
SSH_DIR="$HOME/.ssh"
AUTH_KEYS="$SSH_DIR/authorized_keys"

# Check if the .ssh directory exists
if [ ! -d "$SSH_DIR" ]; then
    echo "Creating $SSH_DIR directory..."
    mkdir -p "$SSH_DIR"
    chmod 700 "$SSH_DIR"
fi

# Check if the authorized_keys file exists
if [ ! -f "$AUTH_KEYS" ]; then
    echo "Creating $AUTH_KEYS file..."
    touch "$AUTH_KEYS"
    chmod 600 "$AUTH_KEYS"
fi

echo "Setup complete. You can now add public keys to $AUTH_KEYS."
