#!/bin/sh

#Collects 5 data points approximately every minute

create_logfile(){
	INIT_DATE=$(date)
	TMPFILE=/tmp/accel-${INIT_DATE}.log
	LOGFILE=/home/root/accel-${INIT_DATE}.log
	touch LOGFILE
}

create_logfile
i=0
while true; do
    date >> ${TMPFILE}
    /usr/bin/accel_read >> ${TMPFILE}
    sleep 10
    i=$((i+1))
    echo ${i}
    if (( i == 2 )); then
        echo "Refresh"
        i=0
        cat "${TMPFILE}" > ${LOGFILE}
	create_logfile
    fi
done
