# Web Stack Debugging #0

## Introduction
Welcome to the Web Stack Debugging project #0! This project is part of the curriculum for Full-Stack Software Engineers at ALX. The goal of this project is to train you in the art of debugging web stacks. Computers and software rarely work exactly the way we want, and debugging is an essential skill for any software engineer.

## Background Context
In this debugging series, broken or bugged web stacks will be provided, and your task will be to debug them manually and come up with a Bash script that, once executed, will bring the web stack to a working state.

## Requirements
- Allowed editors: vi, vim, emacs
- All files will be interpreted on Ubuntu 14.04 LTS
- All files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck without any error
- Bash scripts must run without error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script is doing

## Tasks
### 0. Give me a page!
In this first debugging project, you need to get Apache to run on the container and return a page containing "Hello Holberton" when querying the root of it.

Example:

```bash
$ docker run -p 8080:80 -d -it holbertonschool/265-0
$ curl 0:8080
Hello Holberton
```

After connecting to the container and fixing whatever needed to be fixed, you should see that querying port 80 returns a page that contains "Hello Holberton". Paste the command(s) you used to fix the issue in your answer file.

## Docker Installation
For this project, you will be given a container that you can use to solve the task. However, if you would like to experiment with Docker locally, you can install it on your machine or your Ubuntu 14.04/16.04 VM.

- [Mac OS](https://docs.docker.com/desktop/install/)
- [Windows](https://docs.docker.com/desktop/install/)
- [Ubuntu 14.04](https://docs.docker.com/install/linux/docker-ce/ubuntu14.04/)
- [Ubuntu 16.04](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Resources
- [curl](https://linux.die.net/man/1/curl)
- [Docker Concept Page](https://docs.docker.com/get-started/overview/)

## Repository Information
- **GitHub Repository**: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- **Directory**: 0x0D-web_stack_debugging_0
- **File**: 0-give_me_a_page

## License
Copyright © 2024 ALX, All rights reserved.
