## Tencent Cloud Template

System image: CentOS Stream 9

## Reinstall

```zsh
sudo dnf update -y
sudo reboot
curl -O https://gcore.jsdelivr.net/gh/bin456789/reinstall/reinstall.sh || wget -O reinstall.sh $_
sudo bash reinstall.sh debian 13 --password {PASSWORD}
```
