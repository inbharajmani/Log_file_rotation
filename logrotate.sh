#!/bin/bash
if [ -f $2 ];then
	if [ $1 == "size" ];then
		sed -i "s|filename|$2|" size_log_rotate.conf
		logrotate size_log_rotate.conf	
		sed -i "s|$2|filename|" size_log_rotate.conf
	elif [ $1 == "time" ];then
		sed -i "s|filename|$2|" time_log_rotate.conf
		logrotate time_log_rotate.conf
		sed -i "s|$2|filename|" time_log_rotate.conf
	else
		echo "First argument is wrong. Please provide either time or size"
	fi
else
       echo "Log file not found"
fi       
