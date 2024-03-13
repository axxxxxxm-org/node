#!/bin/sh

sudo useradd -m -p runner runner
sudo usermod -aG sudo runner

echo "User 'runner' has been added with sudo privileges."
echo "Password for 'runner': runner"
