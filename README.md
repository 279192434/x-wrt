# x-wrt云服务器一键安装
wget https://raw.githubusercontent.com/279192434/x-wrt/main/x-wrt-auto.sh && chmod 777 x-wrt-auto.sh && ./x-wrt-auto.sh
# x-wrt本地一键安装
wget https://raw.githubusercontent.com/279192434/x-wrt/main/install-wrt.sh && chmod 777 install-wrt.sh && ./install-wrt.sh
# 腾讯轻量云安装ikuai教程(其它服务器也可以)
wget https://raw.githubusercontent.com/279192434/x-wrt/main/ikuai.sh && chmod 777 ikuai.sh && ./ikuai.sh
# 本地linux服务器安装ikuai教程
wget https://raw.githubusercontent.com/279192434/x-wrt/main/linux-ikuai.sh && chmod 777 linux-ikuai.sh && ./linux-ikuai.sh
# 腾讯轻量云安装脚本执行后，登录腾讯云控制面板，打开轻量云服务器-更多-管理-远程登录-VNC登录 
<br />1、选择1、设置网卡绑定，把wan口绑定到eth0 
<br />2、选择o、其它选项，开启外网访问web 
# 然后就可以通过公网ip地址打开ikuai的web登录界面了
# 注：1.在路由器上开启各种服务端口需要在腾讯云面板上开启对应端口
# 2.输入df -h 服务器安装需要查看服务器是sda vda xda的文件目录，shell默认是vda的。
