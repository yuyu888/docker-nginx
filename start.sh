#!/bin/bash

# nginx reload
nginx -c /etc/nginx/nginx.conf
nginx -s reload

# 启动go服务
/usr/share/go/gotest -env test

#脚本执行完毕退出， 则容器关闭， 所以需要有一个永不关闭的进程
# tail -f /dev/null
