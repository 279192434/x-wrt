#!/bin/sh

#下载内核文件
wget https://www.dropbox.com/s/f49z6iphya24spd/x-wrt-x86-64-generic-initramfs-kernel.bin
#下载安装包
#ikuai软路由安装包
wget https://www.dropbox.com/s/q7kd932sr73h1cy/iKuai8_x64_3.5.4_Build202104211550.img.gz


#下载内核执行脚本
wget https://raw.githubusercontent.com/279192434/x-wrt/main/x-wrt-install-vps.sh

#获取内核版本
Ker=$(uname -r)

#复制内核文件并替换
cp x-wrt-x86-64-generic-initramfs-kernel.bin /boot/vmlinuz-$Ker

#复制ikuai固件到根目录并改名
cp iKuai8_x64_3.5.4_Build202104211550.img.gz /x-wrt.img.gz

#复制内核脚本到根目录并改名
cp x-wrt-install-vps.sh /

echo "执行完成，ikuai系统正在安装，稍等五分钟,然后在腾讯vnc控制界面继续设置"
reboot