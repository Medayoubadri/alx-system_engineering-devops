# 0x14. MySQL

## Description

This project focuses on implementing a MySQL primary-replica infrastructure. It covers installation, user creation, database setup, and configuring replication between two MySQL servers.

## Learning Objectives

By the end of this project, you should be able to explain:

- The main role of a database
- What a database replica is and its purpose
- Why database backups need to be stored in different physical locations
- Operations that should be regularly performed to ensure database backup strategy effectiveness

## Requirements

- Allowed editors: vi, vim, emacs
- All files interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- A README.md file at the root of the project folder is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any errors
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script is doing

## Tasks

### 0. Install MySQL

- Install MySQL 5.7.x on web-01 and web-02 servers

### 1. Let us in!

- Create a MySQL user named `holberton_user` on both web-01 and web-02
- Grant the necessary permissions for checking the primary/replica status

### 2. If only you could see what I've seen with your eyes

- Create a database named `tyrell_corp` on web-01
- Create a table named `nexus6` within `tyrell_corp` and add at least one entry
- Grant SELECT permissions to `holberton_user` on the `nexus6` table

### 3. Quite an experience to live in fear, isn't it?

- Create a new user `replica_user` for the replica server
- Grant appropriate permissions to `replica_user`
- Ensure `holberton_user` has SELECT privileges on the `mysql.user` table

### 4. Setup a Primary-Replica infrastructure using MySQL

- Configure MySQL primary on web-01
- Configure MySQL replica on web-02
- Provide MySQL primary and replica configuration files

### 5. MySQL backup

- Write a Bash script that generates a MySQL dump and creates a compressed archive out of it

## Files

- `4-mysql_configuration_primary`: MySQL primary configuration file
- `4-mysql_configuration_replica`: MySQL replica configuration file
- `5-mysql_backup`: Bash script for MySQL backup
