## Install

```zsh
bash -c "$(curl -L https://gcore.jsdelivr.net/gh/XTLS/Xray-install/install-release.sh)" @ install -u root --logrotate 21:42:48 --without-geodata
mkdir -p /usr/local/share/xray
wget "https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat" -O /usr/local/share/xray/geosite.dat
wget "https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat" -O /usr/local/share/xray/geoip.dat
nano /opt/nginx/conf.d/default.conf
nano /usr/local/etc/xray/config.json
systemctl restart xray
```

## Parameters

- Run `xray uuid` to generate client id.
- Run `xray x25519` to generate reality privateKey.
- Run `xray mldsa65` to generate reality mldsa65 cert.
- Run `openssl rand --hex 8` to generate reality shortId
- Use `bash <(curl -Ls unlock.icmp.ing/scripts/test.sh)` to check domains that need routing.
