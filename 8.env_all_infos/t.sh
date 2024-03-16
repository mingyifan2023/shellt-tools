#!/bin/bash

echo "***** 系统信息 *****"
uname -a

echo
echo "***** 内核版本 *****"
cat /proc/version

echo
echo "***** CPU 信息 *****"
lscpu

echo
echo "***** 内存信息 *****"
free -h

echo
echo "***** 硬盘信息 *****"
df -h

echo
echo "***** 网络信息 *****"
ip a

# echo
# echo "***** 软件包信息 *****"
# # dpkg -l  # 如果是基于 Debian 的系统
# # 或者
# yum list installed  # 如果是基于 CentOS/RHEL 的系统

echo
echo "***** 网络连接情况 *****"
netstat -tuln

echo
echo "***** 系统负载信息 *****"
uptime

echo
echo "***** 当前登录用户信息 *****"
w

echo
echo "***** 系统环境变量 *****"
printenv

echo
echo "***** 系统启动时间 *****"
who -b

echo
echo "***** 当前系统时间和日期 *****"
date

# 可根据需要添加更多的信息输出命令
