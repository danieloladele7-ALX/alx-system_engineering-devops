# Usage

- task 0: after installing on both servers use `sudo ufw status` to check
- task 100: update your `/etc/ufw/before.rules` file with the redirect rule and copy new rules to `100-port_forward`.
	- Shortcut `0-transfer... 100-port_forward` to web-server.
	- ssh into your server and `sudo sed -i '10r 100-port_forward' /etc/ufw/before.rules`
	- check to see that forwarding rules has been added.
	- rerun `./0-block_all_incoming_traffic_but` or simply `sudo systemctl restart ufw`.