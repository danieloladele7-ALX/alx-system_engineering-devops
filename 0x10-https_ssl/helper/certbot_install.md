## Steps:
- [blog post for loadbalancer](https://medium.com/swlh/tutorial-to-configure-ssl-in-a-haproxy-load-balancer-b452d1be100f)
- [http to https](https://www.haproxy.com/blog/redirect-http-to-https-with-haproxy)

```
sudo apt-get update
sudo apt-get install snapd
sudo apt-get remove certbot
sudo snap install --classic certbot
```

- Check if anything is running on port `80`. If yes stop it.

```
netstat -plnt
sudo netstat -tlnp | grep :80
sudo service haproxy stop # that is for haproxy program
```

- Then install the standalone and enter domain details e.g `www.webcronx.tech`

```
sudo certbot certonly --standalone
```

- You should get the following message:

```
Successfully received certificate.
Certificate is saved at: /etc/letsencrypt/live/www.webcronx.tech/fullchain.pem
Key is saved at:         /etc/letsencrypt/live/www.webcronx.tech/privkey.pem
This certificate expires on 2023-10-05.
These files will be updated when the certificate renews.
```

- Append Key to certificate:

`sudo cat /etc/letsencrypt/live/www.webcronx.tech/privkey.pem | sudo tee -a /etc/letsencrypt/live/www.webcronx.tech/fullchain.pem`

```
OUTPUT:
-----BEGIN PRIVATE KEY-----
MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0waw...
-----END PRIVATE KEY-----
-----BEGIN PRIVATE KEY-----
MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0waw...
-----END PRIVATE KEY-----
```

- configure your `/etc/haproxy.haproxy.cfg` to see port `443` and redirect all `http to https`.

- Start haproxy if not started, and restart after making any changes.

```
sudo service haproxy start
sudo service haproxy restart
```
