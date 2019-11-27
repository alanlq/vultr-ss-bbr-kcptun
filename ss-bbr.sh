#! /bin/bash
yum install git
sudo wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
yum -y install epel-release
yum -y install python-pip
pip install shadowsocks
cp shadowsocks.json /etc/&&rm -rf shadowsocks.json
echo "cd /etc&&ssserver -c ./shadowsocks.json -d start" >> /etc/rc.d/rc.local
systemctl stop firewalld.service
systemctl disable firewalld.service
wget https://raw.githubusercontent.com/kuoruan/kcptun_installer/master/kcptun.sh
chmod 777 kcptun.sh
./kcptun.sh