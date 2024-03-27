
#lua t.lua

-- Lua script to create a simple server and test if the port is open

local socket = require("socket")

-- 设置监听的端口
local PORT = 12345

-- 创建服务器并开始监听指定端口
local server = socket.tcp()
server:setoption("reuseaddr", true)
server:bind("*", PORT)
server:listen()

print("Server started on port " .. PORT)

-- 等待连接
local client = server:accept()

if client then
    print("Client connected")
    client:send("Hello, this is the server!\n")
    client:close()
else
    print("No client connection")
end

-- 关闭服务器
server:close()
