#!/bin/sh
pingTo=www.baidu.com
port=80
dns=114.114.114.114
#pingTo=10.99.200.210
SHELL_FOLDER=$(dirname $(readlink -f "$0"))
#ping $pingTo -c 3 -W 1
$SHELL_FOLDER/tcping $pingTo $port -D $dns -c 3
