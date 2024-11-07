# 0x08. Networking Basics #1

## Project Overview
In this project, we continue building our foundational networking skills with a focus on specific networking concepts like `localhost`, `0.0.0.0`, and the `hosts` file. We also explore practical uses of Netcat for debugging network connections.

## Learning Objectives
- Understand what `localhost` and `0.0.0.0` represent in networking.
- Learn about the `hosts` file and how it can be configured for hostname resolution.
- Use **Netcat** for basic networking tasks and as a tool for debugging network connections.

## Tasks Summary
1. **Change Your Home IP**  
   - Write a script to modify `/etc/hosts` so `localhost` resolves to `127.0.0.2` and `facebook.com` resolves to `8.8.8.8`.

2. **Show Attached IPs**  
   - Write a script to display all active IPv4 IPs on the machine.

3. **Port Listening on Localhost**  
   - Write a script to listen on port 98 on `localhost`. Connect using `telnet` to test the script.

## Usage and Examples
- Each script file contains detailed instructions, sample usage, and expected output.
- Ensure all scripts are executable and conform to `shellcheck` standards.

## Fun fact
- Did you know that one of the first programs ever written was a `telnet` client? It was written by the University of California, Berkeley in 1973. It was used to connect to remote computers and test their functionality.

