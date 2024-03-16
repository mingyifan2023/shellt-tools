#!/bin/bash

# 定义颜色代码
GREEN='\033[0;32m'
NC='\033[0m'  # 恢复默认颜色

# 输出带有绿色文本的信息
echo -e "${GREEN}***** 系统信息 *****${NC}"
uname -a

echo -e "${GREEN}\n***** 内核版本 *****${NC}"
cat /proc/version

echo -e "${GREEN}\n***** CPU 信息 *****${NC}"
lscpu

echo -e "${GREEN}\n***** 内存信息 *****${NC}"
free -h

echo -e "${GREEN}\n***** 硬盘信息 *****${NC}"
df -h

echo -e "${GREEN}\n***** 网络信息 *****${NC}"
ip a

# echo
# echo -e "${GREEN}***** 软件包信息 *****${NC}"
# # dpkg -l  # 如果是基于 Debian 的系统
# # 或者
# yum list installed  # 如果是基于 CentOS/RHEL 的系统

echo -e "${GREEN}\n***** 网络连接情况 *****${NC}"
netstat -tuln

echo -e "${GREEN}\n***** 系统负载信息 *****${NC}"
uptime

echo -e "${GREEN}\n***** 当前登录用户信息 *****${NC}"
w

echo -e "${GREEN}\n***** 系统环境变量 *****${NC}"
printenv

echo -e "${GREEN}\n***** 系统启动时间 *****${NC}"
who -b

echo -e "${GREEN}\n***** 当前系统时间和日期 *****${NC}"
date

# 可根据需要添加更多的信息输出命令
