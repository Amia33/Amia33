#!/bin/bash
/usr/bin/rclone sync --config /root/.config/rclone/rclone.conf -v --create-empty-src-dirs /root/docker/vaultwarden cloudflare:backup/vaultwarden
/usr/bin/rclone sync --config /root/.config/rclone/rclone.conf -v --create-empty-src-dirs /root/docker/rustdesk cloudflare:backup/rustdesk