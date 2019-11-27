#! /bin/bash
chmod +x ok_bbrplus_centos.sh
chmod +x kcptun.sh
echo -e "n\n"|./ok_bbrplus_centos.sh
yum -y install epel-release
yum -y install python-pip
pip install shadowsocks
cp shadowsocks.json /etc/&&rm -rf shadowsocks.json
echo "cd /etc&&ssserver -c ./shadowsocks.json -d start" >> /etc/rc.d/rc.local
systemctl stop firewalld.service
systemctl disable firewalld.service
echo -e "6666\n\n8888\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"|./kcptun.sh