# Initialize

```zsh
nano /etc/motd
nano /etc/apt/sources.list ## clear text
nano /etc/apt/sources.list.d/debian.sources
apt update
apt upgrade -y
apt install -y fail2ban chrony zsh apt-transport-https ca-certificates unattended-upgrades curl wget git socat
nano /etc/apt/sources.list.d/debian.sources ## change to https
dpkg-reconfigure tzdata
dpkg-reconfigure locales
dpkg-reconfigure unattended-upgrades
nano /etc/network/interfaces
systemctl restart networking
nano /etc/resolv.conf
chattr +i /etc/resolv.conf
nano /etc/ssh/sshd_config
rm -f /etc/ssh/sshd_config.d/01-permitrootlogin.conf
systemctl restart sshd
nano /etc/fail2ban/jail.d/defaults-debian.conf
systemctl enable --now fail2ban
update-ca-certificates
wget "https://gcore.jsdelivr.net/gh/ylx2016/Linux-NetSpeed/tcpx.sh" -O tcpx.sh
chmod +x tcpx.sh
./tcpx.sh
nano /etc/sysctl.d/99-sysctl.conf
nano /etc/chrony/chrony.conf
systemctl restart chrony
systemctl enable chrony
reboot
chsh -s /bin/zsh root
sh -c "$(curl -fsSL https://gcore.jsdelivr.net/gh/ohmyzsh/ohmyzsh/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
nano .zshrc
source .zshrc
fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab
```

## tcpx.sh

22/23disable 24enable/12

## .zshrc

yyy1y3122112341222y1y

223222y1y
