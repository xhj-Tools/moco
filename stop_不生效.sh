#!/bin/sh
exe_name=moco-runner

# 进入可执行目录
base_path=$(cd `dirname $0`; pwd)
cd $base_path

# 停止进程
exe_pid_path=`pwd`
exe_pid_list=`ps -ef | grep $exe_name|grep -v 'grep'|awk '{print $2}'`
our_pid_list=""
for exe_pid in $exe_pid_list
do
        pid_path=`pwdx $exe_pid | awk '{print $2}'`
        if [ "$pid_path"x == "$exe_pid_path"x ]; then
                our_pid_list=$our_pid_list" "$exe_pid
        fi
done

if [ "$our_pid_list"x != "x" ]; then
        kill -9 $our_pid_list
        echo $exe_name process"$our_pid_list" killed
else
        echo $exe_name is not running
fi