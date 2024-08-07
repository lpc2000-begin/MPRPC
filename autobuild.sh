#!/bin/bash
set -e

# 获取当前路径
CURRENT_DIR=$(pwd)

# 清理旧的构建文件
rm -rf "$CURRENT_DIR/build/*"

# 进入 build 目录
cd "$CURRENT_DIR/build"

# 生成构建文件
cmake ..

# 编译项目
make

# 返回上一级目录
cd ..

# 复制头文件到 lib 目录
cp -r "$CURRENT_DIR/src/include" "$CURRENT_DIR/lib"
