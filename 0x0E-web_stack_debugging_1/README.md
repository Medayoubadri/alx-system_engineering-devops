# 0x0E. Web stack debugging #1

## Project Overview

This project focuses on debugging web stacks, specifically Nginx configurations on Ubuntu 20.04 LTS.

## Requirements

### General

- All files interpreted on Ubuntu 20.04 LTS
- Files should end with a new line
- A README.md file at the root of the project folder is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck without any errors
- Bash scripts must run without error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining the script's purpose
- You are not allowed to use `wget`

## Tasks

### 0. Nginx likes port 80

**File:** `0-nginx_likes_port_80`

This task requires debugging an Nginx installation that's not listening on port 80. The goal is to write a Bash script that configures Nginx to listen on port 80 for all active IPv4 IPs.

**Requirements:**
- Nginx must be running and listening on port 80 of all active IPv4 IPs
- Write a Bash script to automate the fix

### 1. Make it sweet and short

**File:** `1-debugging_made_short`

This task builds on the previous one, requiring a more concise solution.

**Requirements:**
- Bash script must be 5 lines long or less
- There must be a new line at the end of the file
- Must respect usual Bash script requirements
- Cannot use `;` or `&&`
- Cannot use `wget`
- Cannot execute the previous answer file
- `service nginx status` should indicate that nginx is not running

## Usage

To use these scripts:

1. Clone the repository:
   ```
   git clone https://github.com/your-username/alx-system_engineering-devops.git
   ```

2. Navigate to the project directory:
   ```
   cd alx-system_engineering-devops/0x0E-web_stack_debugging_1
   ```

3. Make the scripts executable:
   ```
   chmod +x 0-nginx_likes_port_80 1-debugging_made_short
   ```

4. Run the scripts:
   ```
   ./0-nginx_likes_port_80
   ./1-debugging_made_short
   ```
