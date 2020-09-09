#!/bin/bash
nginx -c /etc/nginx/nginx.conf
nginx -s reload
/usr/share/go/gotest -env test
# tail -f /dev/null
