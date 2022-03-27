#!/bin/sh
exe_name=moco-runner

# 进入可执行目录
base_path=$(cd `dirname $0`; pwd)
cd $base_path

# 停止进程
exe_pid_path=`pwd`
exe_pid=`ps -ef | grep $exe_name|grep -v 'grep'|awk '{print $2}'`
echo $exe_pid
if [ $exe_pid -ne 0 ]; then
    kill -9 $exe_pid
    echo $exe_name process"$exe_pid" killed
else
    echo $exe_name is not running
fi