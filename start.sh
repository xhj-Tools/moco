#!/bin/bash
dirWiremock=`pwd`
getCount=`ps -ef | grep "moco-runner" | grep -v "grep" |wc -l`
wiremock_jar=${dirWiremock}/moco-runner-1.3.0-standalone.jar
port=8777
exe_name=moco-runner
if [ $getCount -ne 0 ]; then
        echo $exe_name is already running with $ssu_pid_count processes
        echo $exe_name started failed
        exit 1;
else
        nohup java -jar ${wiremock_jar} http -p ${port} -c demo.json &
        echo "Start success!......"
fi