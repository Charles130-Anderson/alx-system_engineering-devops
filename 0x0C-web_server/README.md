### Project: 0x0C Web Server

This project focuses on configuring and managing web servers using Bash scripts and Puppet manifests. Below are the tasks included in this project along with their descriptions:

---

#### Task 0: Transfer a file to your server

Write a Bash script that transfers a file from a client to a server using SCP. The script should accept four parameters: the path to the file to be transferred, the IP address of the server, the username SCP connects with, and the path to the SSH private key that SCP uses. It should disable strict host key checking and transfer the file to the user's home directory.

**Example:**
```
./0-transfer_file
Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
```

**Repo:**
- [GitHub Repository](https://github.com/alx-system_engineering-devops/0x0C-web_server)
- File: `0-transfer_file`

---

#### Task 1: Install nginx web server

Write a Bash script to install Nginx on a server (`web-01`) and configure it to listen on port 80. When querying Nginx at its root `/` with a GET request, it should return a page containing the string "Hello World!". The script should be run on the server itself.

**Readme:**
- Use `-y` on `apt-get` command.

**Repo:**
- [GitHub Repository](https://github.com/alx-system_engineering-devops/0x0C-web_server)
- File: `1-install_nginx_web_server`

---

#### Task 2: Setup a domain name

Configure DNS records with an A entry so that the root domain points to the IP address of `web-01`. Provide the domain name in the answer file.

**Requirements:**
- Provide the domain name only (e.g., `foobar.tech`), no subdomain (e.g., `www.foobar.tech`).

**Repo:**
- [GitHub Repository](https://github.com/alx-system_engineering-devops/0x0C-web_server)
- File: `2-setup_a_domain_name`

---

#### Task 3: Redirection

Configure Nginx server to redirect `/redirect_me` to another page with a "301 Moved Permanently" response. The script should automatically configure a new Ubuntu machine to meet the requirements.

**Requirements:**
- The redirection must be a "301 Moved Permanently".

**Repo:**
- [GitHub Repository](https://github.com/alx-system_engineering-devops/0x0C-web_server)
- File: `3-redirection`

---

#### Task 4: Not found page 404

Configure Nginx server to have a custom 404 page that returns an HTTP 404 error code and contains the string "Ceci n'est pas une page". The script should configure a new Ubuntu machine to meet the requirements.

**Repo:**
- [GitHub Repository](https://github.com/alx-system_engineering-devops/0x0C-web_server)
- File: `4-not_found_page_404`

---

#### Task 5: Install Nginx web server (w/ Puppet)

Use Puppet to install and configure Nginx server on port 80. When querying Nginx at its root `/` with a GET request, it should return a page containing the string "Hello World!". Additionally, the script should include resources in the manifest to perform a 301 redirect when querying `/redirect_me`.

**Repo:**
- [GitHub Repository](https://github.com/alx-system_engineering-devops/0x0C-web_server)
- File: `7-puppet_install_nginx_web_server.pp`

---

### General Requirements

- Allowed editors: vi, vim, emacs
- All files interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- README.md file at the root of the folder is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck (version 0.3.7) without any error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script is doing
- Systemctl cannot be used for restarting a process

---

### Resources

- [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
- [Nginx](https://nginx.org/en/)
- [How to Configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04)
- [Child process concept page](https://en.wikipedia.org/wiki/Child_process)
- [Root and subdomain](https://en.wikipedia.org/wiki/Subdomain)
- [HTTP requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview#requests)
- [HTTP redirection](https://developer.mozilla.org/en-US/docs/Web/HTTP/Redirection)
- [Not found HTTP response code](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/404)
- [Logs files on Linux](https://www.digitalocean.com/community/tutorials/how-to-view-and-configure-linux-logs-on-ubuntu-and-centos)

---

### Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

- What is the main role of a web server?
- What is a child process?
- Why do web servers usually have parent and child processes?
- What are the main HTTP requests?
- What does DNS stand for?
- What is the main role of DNS?
- What are DNS Record Types?

---

### Copyright

Copyright © 2024 ALX. All rights reserved.

---

This README.md provides an overview of the project including its tasks, requirements, resources, learning objectives, and copyright information. Each task includes a brief description and a link to its respective repository file.
