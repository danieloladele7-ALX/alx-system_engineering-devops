# NOTES:
## Task 0:
- dependencies: flask
If you run `python3 -m web_flask.0-hello_route` and get this error:
```
 * Serving Flask app '0-hello_route'
 * Debug mode: off
Address already in use
Port 5000 is in use by another program. Either identify and stop that program, or start the server with a different port.
```
run `sudo lsof -i :5000` to see the running process on `port:5000`
- get the `PID` and
- run `ps -p <PID> -o command` to get more details. For mine datadog was running on `port:5000`.
- I rerouted [data-dog](https://raw.githubusercontent.com/DataDog/datadog-agent/master/pkg/config/config_template.yaml) agent's `expvar_port` (found in `/etc/datadog-agent/datadog.yaml`) to `port 5005` and `sudo service datadog-agent restart`.
- you can just `sudo service datadog-agent stop` to stop datadog completely.
- Also remember to update your `web_flask.0-hello_route` file to app route (i.e `@app.route('/', strict_slashes=False)`) to `/airbnb-onepage/`
- `sudo systemctl reload nginx`

## Task 1:
- `sudo pip3 install gunicorn` and ensure nothing is on `port:6000`

## Task 2:

## Task 3:
- check that `port:5001` is free.
- I rerouted `dd-agent` `cmd_port` to `port:5006`
- create a symbloic link between `sudo ln -s ~/AirBnB_clone_v2/web_flask /var/www/html`, change `/var/www/html/web_flask` to `/var/www/html/airbnb-dynamic`
- Test your nginx configuration `sudo nginx -t`
- reload nginx `sudo systemctl reload nginx`
- restart also `sudo systemctl restart nginx`

## Task 4:
- **NOTE**: Dependencies: `sudo apt-get install -y python-sqlalchemy`
- instead of creating a symbloic link between `sudo ln -s ~/AirBnB_clone_v4/web_dynamic /var/www/html` you can rewrite for change of location `rewrite /api ~/AirBnB_clone_v3;`
- Test your nginx configuration `sudo nginx -t`
- reload nginx `sudo systemctl reload nginx`
- restart also `sudo systemctl restart nginx`

