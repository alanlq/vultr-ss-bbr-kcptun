# vultr+shadowsocks+bbr+kcptun一键安装脚本

## 内含有 shadowsocks、kcptun Windows和安卓客户端

## 在centos7下使用

```
echo -e "y\n"|yum install git&&git clone https://github.com/zxj-123/vultr-ss-bbr-kcptun.git
cd vultr-ss-bbr-kcptun/
按需更改shadowsocks.json文件中的端口密码(也可不更改使用默认密码)
chmod 777 ss-bbr.sh&&./ss-bbr.sh
reboot
```

## 默认参数  
- ss端口为8887,8888,8889,8890,8890.密码为：testforbbr  加密方式为:aes-256-cfb  
- tcptun参数  
详细的kcp参数保存在 root/kcptunlog  
可使用的客户端配置文件为:  
```
{  
  "localaddr": ":8888",
  "remoteaddr": "your ip:6666",
  "key": "very fast",
  "crypt": "aes",
  "mode": "fast",
  "mtu": 1350,
  "sndwnd": 512,
  "rcvwnd": 512,
  "datashard": 10,
  "parityshard": 3,
  "dscp": 0,
  "nocomp": false,
  "quiet": false,
  "tcp": false
}  
把其中的your ip改为vps的ip
```
- 手机端参数可以使用:  
```
key=very fast;crypt=aes;mode=fast;mtu=1350;sndwnd=512;rcvwnd=512;datashard=10;parityshard=3;dscp=0
```
