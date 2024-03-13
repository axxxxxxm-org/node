#!/bin/bash

# Define username and password
USERNAME="runner"
PASSWORD="runner"

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" >&2
  exit 1
fi

# Create the user with a home directory
useradd -m "$USERNAME"

# Check if useradd command was successful
if [ $? -eq 0 ]; then
  echo "User $USERNAME has been added to system!"
else
  echo "Failed to add a user!" >&2
  exit 2
fi

# Set the user's password
echo "$USERNAME:$PASSWORD" | chpasswd

# Check if chpasswd command was successful
if [ $? -eq 0 ]; then
  echo "Password for user $USERNAME has been set successfully!"
else
  echo "Failed to set password!" >&2
  exit 3
fi