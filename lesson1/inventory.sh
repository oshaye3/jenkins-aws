
#!/usr/bin/env bash

#########################################

# Capturing System Information

###################################

# define variable for information

host_name=`hostname -f`
date_report=`date`
sleep 20s

echo ""
echo ""
echo "-----------------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "Inventory report for the $host_name as at $date_report"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------------"
echo ""
echo ""
echo "RAM              : `free -h | awk  '/Mem:/{print $2}'`
Bash version           : `bash --version | head -1 | awk '{print $4}'`
Java version           : `java -version 2>&1 | head -1 | awk '{print $NF}' | sed 's/\"//g'`
Operating System       : `free -m`
Operating System       : `uname -s`
OS version             : `uname -v`
Currently connected    : `w`
uptime                 : `uptime -p`
Last date of log in    : `last -a | head -3`
Process Statistics     : `vmstat 1 5`"

echo ""
echo ""
echo "-----------------------------------------------------------------------------------------------------------------------------------------------------"
echo ""
echo ""
\# Hardware Information 

lshw -short

echo ""
echo ""
echo "-----------------------------------------------------------------------------------------------------------------------------------------------------"
