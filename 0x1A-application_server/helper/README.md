# NOTES:
## Task 0:
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
- I rerouted [data-dog](https://raw.githubusercontent.com/DataDog/datadog-agent/master/pkg/config/config_template.yaml) agent's `expvar_port` (found in `/etc/datadog-agent/datadog.yaml`) to `port 5003` and `sudo service datadog-agent restart`.
- you can just `sudo service datadog-agent stop` to stop datadog completely.
- Also remember to update your `web_flask.0-hello_route` file to app route (i.e `@app.route('/', strict_slashes=False)`) to `/airbnb-onepage/` 

## Task 1:
- `sudo pip3 install gunicorn` and ensure nothing is on `port:6000`