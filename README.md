# vultr-ss-bbr-kcptun

按需更改shadowsocks.json中的端口密码

cd

sudo wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh

reboot

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

请输入 Kcptun 服务端运行端口 填6666

请输入需要加速的端口 [1~65535] 填8888

其它全部按回车

保持最后的输出参数