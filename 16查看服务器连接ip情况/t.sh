当然，以下是整理后的一个示例 shell 脚本，用于查看连接到服务器的情况并输出 IP 地址的所属区域：

bash
#!/bin/bash

# 使用 ss 命令查看当前连接情况，并提取远程 IP 地址
remote_ips=$(ss -tuna | awk '{print $5}' | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")

# 输出表头
echo "IP Address         Country       City          ISP"
echo "-------------------------------------------------------"

# 遍历远程 IP 地址，并查询所属区域信息
for ip in $remote_ips
do
    # 使用 whois 命令查询 IP 地址的所属区域信息，并提取关键信息
    country=$(whois $ip | grep -iE 'Country:' | awk '{print $2}')
    city=$(whois $ip | grep -iE 'City:' | awk '{print $2}')
    isp=$(whois $ip | grep -iE 'ISP:' | awk '{$1=""; print $0}')

    # 输出 IP 地址及所属区域信息
    echo "$ip        $country        $city        $isp"
done
将以上代码保存到一个文件（例如 check_connections.sh），并赋予执行权限：

bash
chmod +x check_connections.sh
然后您可以运行这个脚本来查看连接到服务器的情况并输出 IP 地址的所属区域：

bash
./check_connections.sh
请注意，该脚本可能需要在具有足够权限的环境中运行，并且在查询 IP 地址所属区域信息时可能需要一些时间。
