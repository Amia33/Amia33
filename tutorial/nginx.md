## Official

```zsh
apt install curl gnupg2 ca-certificates lsb-release debian-archive-keyring
curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor | tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
nano /etc/apt/sources.list.d/nginx.sources
echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" | tee /etc/apt/preferences.d/99nginx
apt update
apt install nginx
```

## /etc/apt/sources.list.d/nginx.sources

```zsh
systemctl enable --now nginx
## Add nginxconfig.io support here
curl https://get.acme.sh | sh -s email={EMAIL}
export CF_Token="{CF_TOKEN}"
export CF_Zone_ID="{CF_ZONE_ID}"
acme.sh --issue --dns dns_cf -d {DOMAIN} --keylength 4096
acme.sh --install-cert -d {DOMAIN} --key-file /etc/ssl/private/key-file.key --fullchain-file /etc/ssl/private/fullchain-file.crt --reloadcmd "systemctl force-reload nginx"
systemctl restart nginx
mkdir -p /var/www/html
## sftp upload
chmod -R 755 /var/www/html
chown -R root /var/www/html
systemctl reload nginx
```

## Deny access for unknown domains

Edit `/etc/nginx/conf.d/default.conf`.
