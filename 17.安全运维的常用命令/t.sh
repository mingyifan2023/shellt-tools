
Linux基础命令
文件和目录操作
ls：列出目录内容。

使用ls -l 可以显示详细信息，在日常运维中，主要检查文件权限和修改时间。

find：查找文件。

#按修改时间搜索：
find / -mtime -1：#搜索在过去24小时内修改的文件
find / -mmin -30：#搜索在过去30分钟内修改的文件
#按用户和组搜索：
find / -user username：搜索属于指定用户的所有文件
find / -group groupname：搜索属于指定组的所有文件
#组合条件搜索：
find / -name "*.log" -mtime -7：#搜索在过去7天内修改过的所有.log文件
find / -size +1M -size -5M：#搜索大小在1MB到5MB之间的文件
#忽略某些目录：
find / -path /path/to/exclude -prune -o -name "*.txt" -print：#搜索所有.txt文件
#按权限搜索：
find / -perm 644：搜索权限精确匹配644的文件
find / -perm /u=r：搜索用户可读的文件
更多find命令的高级用法，大家可以自行学习。

stat：查看文件或目录的具体信息，如修改时间、访问权限等，这对于确定文件是否被篡改非常关键。

图片
定时任务
通过排查定时任务，可以查看潜在的攻击任务。在安全事件响应中，是常见的步骤之一。常用排除命令如下：

crontab：管理用户的定时任务。

crontab -e：编辑定时任务。

crontab -l：查看当前定时任务列表。

/etc/crontab：定时任务配置文件。

图片
权限管理
在Linux中，权限管理是非常重要的。他决定了该风险程序能否正常执行。在Linux中，常用的权限管理命令为chmod 和 chown。chmod 用于更改文件或目录的访问权限如

chmod +x kali.sh #给kali.sh 以root身份权限
chown 更改文件或目录的所有者和/或所属组如

chown user:group www #www 目录所属user用户
图片
文件目录的所有者和归属组
用户和组管理
在Linux中，攻击者可以创建一些隐藏的账号来登录系统。常用的命令如下：

useradd：用于创建新用户

userdel：用于删除用户。

usermod：用于修改用户账户，例如更改用户名或所属组。

grep 命令应用：
grep命令一般和awk 和sed等命令结合使用。用来分析日志中的安全响应事件，如对账号和密码的暴力破解。

grep 'Failed' /var/log/auth.log #从日志中获取登录失败的信息
awk -F ':' '{print $1}' /etc/passwd #获取passwd文件中每行的第一列
sed 's/old/new/g' file.txt #将文件中所有old字符串替换为new
系统状态
通过排查占用系统进程比较高的程序，来分析是哪个程序或者服务占用了较高的系统资源。最常见的便是挖矿木马了。常用的命令如下：

图片
top命令
top：显示当前活动的进程。

top -u username显示指定用户的进程，

top -i忽略闲置和僵尸进程。

df 和du：磁盘使用情况。

图片
df -h可以显示本地磁盘的使用情况。

网络和进程监控
通过排查当前设备的网络和端口连接状态，从而获取异常的网络链接。常用的排除命令有：

netstat -tuln 查看所有监听端口

netstat -an | grep ESTABLISHED 查看建立的网络连接。

图片当然，我们可以使用更加轻量化的工具ss

ss -tuln 查看监听端口

ss -tp 显示哪些进程正在使用哪些端口。

图片
进程排查
在Linux中，利用ps命令可以查看当前进程。常用的命令如下：

ps -aux #显示所有进程的详细列表，
ps -aux | grep httpd #查找所有运行的httpd进程。
lsof #列出被进程打开的文件，
lsof -i :80 #显示所有打开80端口的进程。
日志分析
在Linux中，日志文件是非常重要的，他记录了攻击者的各类操作和攻击手段。常见的日志文件和说明如下：

安全日志/var/log/secure 如SSH暴力破解记录
系统日志：/var/log/syslog记录系统运行信息
Web服务日志：/var/log/access.log 和 /var/log/error.log 记录Web访问和错误信息对于分析网站安全事件至关重要
内核日志：/var/log/kern.log 用于调查系统崩溃和硬件问题
历史命令日志：~/.bash_history 或 /root/.bash_history 记录用户的命令历史，可以用来追踪用户的操作历史，在调查安全事件时非常重要
常用日志分析命令
grep：用于查找特定模式如

grep 'Failed' /var/log/secure #查找失败的登录尝试。
awk：用于复杂的文本处理如

awk '{print $1}' /var/log/auth.log | sort | uniq -c | sort -nr 可以统计登录尝试的频率。
敏感文件
/etc/passwd 和/etc/shadow：存储用户账户信息和加密后的密码，有助于发现未授权的用户账号更改。

/etc/sudoers：定义了哪些用户具有sudo权限，有助于检测未授权的权限提升。

/etc/group：存储用户组信息，包括组名、组密码、组ID和组内成员

/etc/crontab 和 /etc/cron.\*/\*：存储计划任务配置

/root/.ssh/authorized_keys：存储有权限远程访问root用户的SSH密钥。

总结
熟练掌握Linux中的各种命令和对日志的分析是运维的基础。通过这些命令和技巧，我们可以有效地管理系统、诊断问题并保护系统免受安全威胁。当然本文也是简单的进行了说明。更具体的用法还要结果真实的生产环境决定。
