#!/bin/sh

#下载内核文件
wget https://github.com/279192434/x-wrt/raw/main/x-wrt-x86-64-generic-initramfs-kernel.bin

#下载安装包
#x-wrt软路由安装包
wget https://github.com/279192434/x-wrt/raw/main/x-wrt-x86-64-generic-ext4-combined.img.gz
#lede软路由安装包
#wget https://github.com/279192434/x-wrt/raw/main/openwrt-koolshare-router-v2.37-r17471-8ed31dafdf-x86-64-generic-squashfs-combined.img.gz
#ikuai软路由安装包
#wget https://github.com/279192434/x-wrt/raw/main/iKuai8_x32_3.5.0_Build202103081445.img.gz


#下载内核执行脚本
wget https://raw.githubusercontent.com/279192434/x-wrt/main/x-wrt-install-vps.sh

#获取内核版本
Ker=$(uname -r)

#复制内核文件并替换
cp x-wrt-x86-64-generic-initramfs-kernel.bin /boot/vmlinuz-$Ker

#复制x-wrt固件到根目录并改名
cp x-wrt-x86-64-generic-ext4-combined.img.gz /x-wrt.img.gz
#复制ikuai固件到根目录并改名
#cp iKuai8_x32_3.5.0_Build202103081445.img.gz /x-wrt.img.gz
#复制lede固件到根目录并改名
#cp openwrt-koolshare-router-v2.37-r17471-8ed31dafdf-x86-64-generic-squashfs-combined.img.gz /x-wrt.img.gz

#复制内核脚本到根目录并改名
cp x-wrt-install-vps.sh /

echo "执行完成，请输入reboot重启，稍等五分钟,在浏览器输入https://公网ip"
#reboot
