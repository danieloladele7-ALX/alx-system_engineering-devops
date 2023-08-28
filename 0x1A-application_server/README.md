# Application server

## Background Context

Your web infrastructure is already serving web pages via `Nginx` that you installed in your first web stack project. While a web server can also serve dynamic content, this task is usually given to an application server. In this project you will add this piece to your infrastructure, plug it to your `Nginx` and make is serve your `Airbnb` clone project.

## Requirements

### General
+ A `README.md` file, at the root of the folder of the project, is mandatory
+ Everything Python-related must be done using `python3`
+ All config files must have comments

### Bash Scripts
+ All your files will be interpreted on `Ubuntu 16.04 LTS`
+ All your files should end with a new line
+ All your Bash script files must be executable
+ Your Bash script must pass Shellcheck (version `0.3.7-5~ubuntu16.04.1` via `apt-get`) without any error
+ The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
+ The second line of all your Bash scripts should be a comment explaining what is the script doing

### Resources
- [Understanding Nginx Server and Location Block Selection Algorithms](https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms#matching-location-blocks)
- [Understanding nginx location blocks and rewrite rules](http://blog.pixelastic.com/2013/09/27/understanding-nginx-location-blocks-rewrite-rules/)
- [NGINX Reverse Proxy](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/#)