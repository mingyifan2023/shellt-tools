# 要在 CentOS 上安装 sysdig，您可以按照以下步骤进行操作：

# 首先，确保您的系统已安装 yum 包管理工具。

# 打开终端，并以 root 用户身份执行以下命令来添加 sysdig 的软件源：

curl -s https://s3.amazonaws.com/download.draios.com/stable/install-sysdig | sudo bash
# 安装 sysdig 软件包。执行以下命令：

sudo yum install -y sysdig
# 安装完成后，您可以通过运行以下命令来验证 sysdig 是否成功安装：

sysdig --version
# 现在，您可以开始使用 sysdig 来监控和诊断系统了。





# 您可以使用 sysdig 来查询占用内存、磁盘和 CPU 最多的进程。以下是针对每个场景的示例命令：

# 查询占用内存最多的进程
# sudo sysdig -c topprocs_mem
# 该命令会显示当前系统中占用内存最多的进程列表。

# 查询占用磁盘最多的进程
# sudo sysdig -c topprocs_file
# 这条命令将列出当前系统中占用磁盘 I/O 最多的进程。

# 查询占用 CPU 最多的进程
# sudo sysdig -c topprocs_cpu
# 这个命令将显示当前系统中占用 CPU 最多的进程列表。

# 如果您在运行 sysdig -c topprocs_mem 命令时遇到 "can't open file topprocs_mem" 错误，这可能是因为默认情况下 sysdig 没有安装包含 topprocs_mem 的插件。您可以尝试使用以下替代方法来查询占用内存最多的进程：

# 使用 ps 命令结合 sort 和 head 来查找占用内存最多的进程：

# ps aux --sort=-%mem | head
# 使用 top 命令也可以实时监视并排序显示系统资源占用情况：

# top
