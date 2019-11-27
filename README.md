# vultr+shadowsocks+bbr+kcptun一键安装脚本

## 在centos7下使用

```
echo -e "y\n"|yum install git&&git clone https://github.com/zxj-123/vultr-ss-bbr-kcptun.git
cd vultr-ss-bbr-kcptun/
按需更改shadowsocks.json中的端口密码
chomod 777 ss-bbr.sh&&./ss-bbr.sh
reboot
```

## 默认参数  
- ss端口为8887,8888,8889,8890,8890.密码为：testforbbr  
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
```
- 手机端参数可以使用:  
```
key=very fast;crypt=aes;mode=fast;mtu=1350;sndwnd=512;rcvwnd=512;datashard=10;parityshard=3;dscp=0
```
