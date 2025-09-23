## Initialize

Edit `/etc/alloy/config.alloy`.

## Linux server intergration

Edit `/etc/alloy/config.alloy`.

## Docker intergration

### Prerequisites

Add user `alloy` to `docker` user group by running `usermod -a -G docker alloy`.

Edit `alloy` service configuration by running `systemctl edit --full alloy.service`.

```diff
- User=alloy
+ User=root
```

Run `systemctl daemon-load` and `systemctl restart alloy` to make changes take effect.

### Configure alloy

Edit `/etc/alloy/config.alloy`.

## Nginx intergration

### Check nginx configuration

Edit `/etc/nginx/nginx.conf`.

Edit each site's configuration file which `access_log` is enabled.

```diff
-   access_log              /var/log/nginx/access.log combined buffer=512k flush=1m;
+   access_log              /var/log/nginx/json_access.log json_analytics buffer=512k flush=1m;
```

### Compile geoip2 module

```zsh
apt install -y libmaxminddb0 libmaxminddb-dev mmdb-bin build-essential libpcre2-dev zlib1g-dev libssl-dev libxml2-dev libxslt-dev libgd-dev
wget https://nginx.org/download/nginx-{VERSION}.tar.gz
tar zxvf nginx-{VERSION}.tar.gz
cd nginx-{VERSION}
git clone https://github.com/leev/ngx_http_geoip2_module.git
./configure --with-compat --add-dynamic-module=./ngx_http_geoip2_module
make modules
```

Copy `objs/ngx_http_geoip2_module.so` to `/etc/nginx/modules/`.  
Download `GeoLite2 country` database from [MAXMIND](https://www.maxmind.com/en/home), and put `GeoLite2-Country.mmdb` into `/etc/nginx/`.

### Enable stub status module

Edit `/etc/nginx/conf.d/default.conf`.

Remember to restart `nginx` to make changes take effect.
