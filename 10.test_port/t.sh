#明白了，你需要一个 Shell 脚本来模拟一个简单的服务器，然后测试该服务器脚本监听的端口是否可以从外部访问。以下是一个示例脚本：

#!/bin/bash

# 设置监听的端口
PORT=12345

# 启动一个简单的服务器，监听指定端口
echo "Starting server on port $PORT..."
nc -l $PORT &
PID=$!

# 等待一段时间，让服务器运行
sleep 5

# 测试该端口是否开放（可以从外部访问）
nc -zv localhost $PORT

# 关闭服务器进程
kill $PID
