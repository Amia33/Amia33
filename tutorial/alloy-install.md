## Prerequisites

```zsh
apt install -y gpg
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | tee /usr/share/keyrings/grafana.gpg > /dev/null
```

## Set up apt repository

Edit `/etc/apt/sources.list.d/grafana.sources`.

## Install packages

```zsh
apt update
apt install -y alloy
systemctl enable --now alloy
```
