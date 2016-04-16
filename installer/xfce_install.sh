#!/bin/bash

apt-get -y -q install xfce4 network-manager-gnome xfce4-whiskermenu-plugin gnome-terminal xfce4-goodies xfce4-mixer
apt-get -y remove xfce4-notifyd

zenity --question --title="为Xfce安装主题" --text="现在安装Linux Mint主题"
if [ $? = 0 ]; then
	echo "即将获取并运行脚本(http://t.cn/R7vRDCZ)"
	wget -qO- http://t.cn/R7vRDCZ | bash -
	echo "安装结束" &
fi
