# 0x0F. Load balancer

This project is a continuation of the 0x0C. Web server project. It focuses on improving our web stack by adding redundancy to our web servers, allowing us to handle more traffic and improve reliability.

## Files

- `0-custom_http_response_header`: Bash script to configure Nginx with a custom HTTP header
- `1-install_load_balancer`: Bash script to install and configure HAproxy as a load balancer
- `2-puppet_custom_http_response_header.pp`: Puppet manifest to configure Nginx with a custom HTTP header

## Server Information

- Web-01: 34.224.63.237
- Web-02: 52.86.3.5
- LB-01: 100.26.219.82

## Tasks

0. Double the number of webservers
1. Install your load balancer
2. Add a custom HTTP header with Puppet (Advanced)
