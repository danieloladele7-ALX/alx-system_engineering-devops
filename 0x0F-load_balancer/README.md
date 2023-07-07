# 0x0F-load_balancer
## Background Context
You have been given 2 additional servers:
- gc-[STUDENT_ID]-web-02-XXXXXXXXXX
- gc-[STUDENT_ID]-lb-01-XXXXXXXXXX

Let’s improve our web stack so that there is redundancy for our web servers. This will allow us to be able to accept more traffic by doubling the number of web servers, and to make our infrastructure more reliable. If one web server fails, we will still have a second one to handle requests.

For this project, you will need to write Bash scripts to automate your work. All scripts must be designed to configure a brand new Ubuntu server to match the task requirements.

## Usage:
- `./0-use_a_private_key` is for automatic ssh login to remote server. 
- `./0-transfer_file` is to transfer file to web servers: `Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`
- Files `1-install_nginx_web_server`, `3-redirection`, and `4-not_found_page_404` are to set up web server `01` and `02`. `Usage: sudo ./1-install_nginx_web_server > /dev/null 2>&1`. NOTE: `> /dev/null 2>&1` is to silence and discard output.
- File `0-custom_http_response_header` is to set up the http response header for web servers `01` and `02`
- File `1-install_load_balancer` is to configure your load balancer and link to web servers `01` and `02`

## Configuring wed server:
- Transfer all necessary helper files to web-01 and web-02 if not done.
- Configure web-02 like web-01: `sudo ./1-install_nginx_web_server > /dev/null 2>&1` for `1-install_nginx_web_server`, `3-redirection`, and `4-not_found_page_404`