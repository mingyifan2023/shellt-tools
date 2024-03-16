#!/bin/bash

# 定义颜色代码
RED='\033[0;31m'
NC='\033[0m'  # 恢复默认颜色

# 输出带有红色文本的信息
echo -e "${RED}***** 系统信息 *****${NC}"
uname -a

echo -e "${RED}\n***** 内核版本 *****${NC}"
cat /proc/version

echo -e "${RED}\n***** CPU 信息 *****${NC}"
lscpu

echo -e "${RED}\n***** 内存信息 *****${NC}"
free -h

echo -e "${RED}\n***** 硬盘信息 *****${NC}"
df -h

echo -e "${RED}\n***** 网络信息 *****${NC}"
ip a

# echo
# echo -e "${RED}***** 软件包信息 *****${NC}"
# # dpkg -l  # 如果是基于 Debian 的系统
# # 或者
# yum list installed  # 如果是基于 CentOS/RHEL 的系统

echo -e "${RED}\n***** 网络连接情况 *****${NC}"
netstat -tuln

echo -e "${RED}\n***** 系统负载信息 *****${NC}"
uptime

echo -e "${RED}\n***** 当前登录用户信息 *****${NC}"
w

echo -e "${RED}\n***** 系统环境变量 *****${NC}"
printenv

echo -e "${RED}\n***** 系统启动时间 *****${NC}"
who -b

echo -e "${RED}\n***** 当前系统时间和日期 *****${NC}"
date

# 可根据需要添加更多的信息输出命令
