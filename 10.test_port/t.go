package main

import (
	"fmt"
	"net"
)

func main() {
	port := 12345

	// 创建监听器并开始监听指定端口
	listener, err := net.Listen("tcp", fmt.Sprintf(":%d", port))
	if err != nil {
		fmt.Printf("Failed to start server: %v\n", err)
		return
	}

	defer listener.Close()

	fmt.Printf("Server started on port %d\n", port)

	// 接受连接
	conn, err := listener.Accept()
	if err != nil {
		fmt.Printf("Failed to accept connection: %v\n", err)
		return
	}

	defer conn.Close()

	fmt.Println("Client connected")

	// 发送数据给客户端
	_, err = conn.Write([]byte("Hello, this is the server!\n"))
	if err != nil {
		fmt.Printf("Failed to send data: %v\n", err)
		return
	}
}
