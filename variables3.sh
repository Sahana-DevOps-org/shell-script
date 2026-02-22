#!/bin/bash
STARTTIME=$(date +%s)
echo "Script executed at : $STARTTIME"

sleep 10 

ENDTIME=$(date +%s) 
TOTAL_TIME=$(($STARTTIMR-$ENDTIME))
echo "Script ended in : $TOTAL_TIME"