#!/bin/bash
source TOP_consts

cat $LOG_FILE | grep "$MAINTENANCE_MSG" | wc -l
