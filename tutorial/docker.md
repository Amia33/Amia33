## Prerequisites

```zsh
apt install -y ca-certificates curl
curl -fsSL https://download.docker.com/linux/debian/gpg -o /usr/share/keyrings/docker.asc
chmod a+r /usr/share/keyrings/docker.asc
```

## Set up apt repository

Edit `/etc/apt/sources.list.d/docker.sources`.

## Install packages

```zsh
apt update
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable --now docker
```

## Optional: set proxy for docker

Edit `/etc/docker/deamon.json`.

Run `systemctl restart docker` to make changes take effect.
