
#perl t.pl

use strict;
use warnings;
use IO::Socket::INET;

# 设置监听的端口
my $PORT = 12345;

# 创建服务器并开始监听指定端口
my $server = IO::Socket::INET->new(
    LocalPort => $PORT,
    Type      => SOCK_STREAM,
    Reuse     => 1,
    Listen    => 1
) or die "Cannot create socket: $!";

print "Server started on port $PORT\n";

# 接受连接
my $client = $server->accept();
print "Client connected\n";

# 发送数据给客户端
$client->send("Hello, this is the server!\n");

# 关闭连接
$client->close();
$server->close();
