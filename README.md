# Log_file_rotation
Main script - logrotate.sh

It needs the below Arguments/Positional parameters:
1) "time" or "size"
2)  Log file name

## Example invocations:
**./logrotate.sh time /var/log/audit.log** -> Rotates the log once in a day

**./logrotate.sh size /var/log/audit.log** -> Rotates the log if log file size is greater than or equal to 10MB

logrotate.sh script invokes time_log_rotate.conf or size_log_rotate.conf files for logrotation to happen.
