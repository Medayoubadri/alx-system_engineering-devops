# 0x0A Configuration Management

This project contains Puppet manifests for various system administration tasks.

## Project Overview

In this project, we use Puppet to automate several system administration tasks:

1. Creating a file with specific properties
2. Installing a package using pip3
3. Killing a specific process

## Requirements

- All files are interpreted on Ubuntu 20.04 LTS
- All files end with a new line
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors
- Puppet manifests must run without error
- Puppet manifests first line must be a comment explaining what the Puppet manifest is about
- Puppet manifest files must end with the extension .pp

## Tasks

### 0. Create a file

**File:** `0-create_a_file.pp`

This manifest creates a file in `/tmp` with the following requirements:

- File path is `/tmp/school`
- File permission is 0744
- File owner is www-data
- File group is www-data
- File contains "I love Puppet"

To apply:

```bash
$ puppet apply 0-create_a_file.pp

```

### 1. Install a package

**File:** `1-install_a_package.pp`

This manifest installs Flask from pip3 with the following requirements:

- Install Flask
- Version must be 2.1.0

To apply:

```bash
$ puppet apply 1-install_a_package.pp

```

### 2. Execute a command

**File:** `2-execute_a_command.pp`

This manifest creates a manifest that kills a process named `killmenow` using the following requirements:

- Must use the `exec` Puppet resource
- Must use `pkill`

To apply:

```bash
$ puppet apply 2-execute_a_command.pp

```

## Testing

To test these manifests:

1. Ensure you have Puppet installed (version 5.5 for this project)
2. Run `puppet-lint` on each .pp file to check for style errors
3. Apply each manifest using `puppet apply`
4. Verify the results (check file creation, package installation, or process termination)
