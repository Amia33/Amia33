## Configure nginx

:::tip
Remember to restart `nginx` to make changes take effect.
:::

### Main configuration

Edit `/etc/nginx/nginx.conf`.

### Site configuration

Edit `/etc/nginx/sites-available/{DOMAIN}.conf`.

## Vaultwarden configuration

:::tip
Remember to restart `docker compose` to make changes take effect.
:::

## Setup daily backup

Edit `backup.sh`

Run `crontab -e` to edit cron service.  
Press `Enter` if prompted.

```diff
+ 1 0 * * * "/home/{USER}"/backup.sh
```
