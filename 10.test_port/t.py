import socket

# 设置监听的端口
PORT = 12345

# 创建套接字并开始监听指定端口
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
server.bind(('0.0.0.0', PORT))
server.listen(1)

print(f"Server started on port {PORT}")

# 接受连接
client, addr = server.accept()
print(f"Client connected from {addr}")

# 发送数据给客户端
client.send(b"Hello, this is the server!\n")

# 关闭连接
client.close()
server.close()
