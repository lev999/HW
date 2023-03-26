#!/bin/bash
source TOP_consts

echo $CSV_HEADERS > $LOG_FILE

while true; do
    top_process=$(pgrep top)
    if [ ! -z "$top_process" ]
    then
        msg=$RUNNING_MSG
    else
        if [ -f "$MAINTENANCE_FILE" ]; then
              msg=$MAINTENANCE_MSG
            else
              $(top -b)&
              msg=$WAS_STARTED_MSG
        fi
    fi
    timestamp=$(date +$DATE_FORMAT)
    echo "$timestamp,$msg" >> $LOG_FILE
    sleep $INTERVAL

done

