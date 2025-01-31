#!/bin/bash

# Script to install and configure Tailscale on a Raspberry Pi

# Update and upgrade the system
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Tailscale
echo "Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh

# Enable and start Tailscale service
echo "Enabling and starting Tailscale service..."
sudo systemctl enable tailscaled
sudo systemctl start tailscaled

# Authenticate the device with Tailscale
echo "Authenticating with Tailscale..."
sudo tailscale up

# Set up Tailscale as an exit node
read -p "Do you want to set this device as an exit node? (y/n): " EXIT_NODE
if [[ "$EXIT_NODE" == "y" || "$EXIT_NODE" == "Y" ]]; then
    echo "Setting up Tailscale as an exit node..."
    sudo tailscale up --advertise-exit-node
    echo "This device is now configured as an exit node."
fi


echo "Tailscale setup is complete!"
