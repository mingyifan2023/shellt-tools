#!/bin/bash

# 获取当前工作目录并赋值给变量
directory="$(pwd)"

# 在最上层执行 chmod 777 *
chmod 777 "$directory"/*

# 遍历便利文件夹中的所有文件夹并执行 chmod 777 *
find "$directory" -type d -exec chmod 777 {} \;
