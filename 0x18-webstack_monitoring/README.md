# 0x18 - Webstack Monitoring:

This project will be about configuring datalogic for monitoring servers and computers.

## NOTES:

+ After installation on `web-01` goto `/etc/datadog-agent/conf.d/http_check.d` and edit the `.yaml` file accordingly see [http_check](https://docs.datadoghq.com/integrations/http_check/) for more.
+ then `sudo service datadog-agent restart`
+ KEY ID is not your API or Application KEY just an ID.
+ API KEY is your Organization Key found in Organization settings
+ Application Key is your the Key found in Organization or Personal settings.