# Raspberry Pi Tailscale Setup Script

A Bash script to automate the installation and configuration of Tailscale on a Raspberry Pi. Perfect for creating a secure, zero-config VPN connection to your device.

---

## Why Tailscale?
- **Convenience**: Tailscale simplifies secure networking by automating VPN setup — no manual firewall rules or complex configurations.
- **Security**: Uses WireGuard under the hood for fast, modern encryption.
- **Access Anywhere**: Securely access your Raspberry Pi from other Tailscale-connected devices, even behind NAT/firewalls.
- **Exit Node Support**: Optional one-line configuration to route all your traffic through the Raspberry Pi.

---

## What is Tailscale?
[Tailscale](https://tailscale.com/) is a zero-config VPN that creates a secure network between your devices using the open-source WireGuard protocol. It automatically handles authentication via your existing SSO (Google, GitHub, etc.) and encrypts all traffic end-to-end.

---

## Script Overview
This script automates:
1. **System Updates**: Ensures your Raspberry Pi is up-to-date.
2. **Tailscale Installation**: Installs Tailscale via the official script.
3. **Service Setup**: Enables and starts the Tailscale background service.
4. **Authentication**: Guides you to authenticate the device via Tailscale.
5. **Exit Node Configuration** *(Optional)*: Sets the Pi as a VPN exit node.

---

## Usage Instructions

### Prerequisites
- Raspberry Pi OS (Debian-based)
- `sudo` privileges
- Internet connection

### Steps
1. **Download the Script**:
   ```bash
   wget https://your-repo-url.com/tailscale-setup.sh
   ```
2. **Make It Executable**:
   ```bash
   chmod +x tailscale-setup.sh
   ```
3. **Run the Script**:
   ```bash
   sudo ./tailscale-setup.sh
   ```
4. **Follow Authentication**:
   - A Tailscale login URL will appear in the console. Open it on another device to authorize your Pi.

5. **Optional Exit Node**:
   - When prompted, choose `y` to enable exit node functionality.

---

## Cautions
- **Root Access**: This script runs with `sudo` — review the code before execution.
- **Exit Node Responsibility**: Enabling the exit node exposes your Pi to external traffic. Ensure your network can handle this and secure your Pi accordingly.
- **Authorization Required**: You must log in via Tailscale’s web interface to complete setup.
- **Updates**: Regularly update Tailscale with `sudo apt update && sudo apt upgrade tailscale`.

---

## Post-Setup Tips
- Check connected devices: `tailscale status`
- Get your Pi’s Tailscale IP: `tailscale ip`
- Admin panel: https://login.tailscale.com

---

## License
MIT License. Use at your own risk. [Tailscale’s Terms](https://tailscale.com/terms/) apply.