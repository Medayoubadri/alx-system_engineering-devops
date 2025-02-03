# 0x13. Firewall

## Description

This project focuses on configuring and managing firewalls using UFW (Uncomplicated Firewall) on our web servers. We learned how to set up basic firewall rules and implement port forwarding.

## Tasks Completed

### 0. Block all incoming traffic but

- Installed and configured UFW on web-01
- Set up rules to block all incoming traffic except for ports 22 (SSH), 443 (HTTPS), and 80 (HTTP)
- Created a file `0-block_all_incoming_traffic_but` with the UFW commands used

### 1. Port forwarding

- Configured web-01's firewall to redirect port 8080/TCP to port 80/TCP
- Modified the `/etc/ufw/before.rules` file to implement port forwarding
- Created a file `100-port_forwarding` with the modified UFW configuration

## Files

- `0-block_all_incoming_traffic_but`: Contains UFW commands for basic firewall setup
- `100-port_forwarding`: Contains the modified UFW configuration for port forwarding
