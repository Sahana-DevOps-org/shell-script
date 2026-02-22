#!/bin/bash

echo "all args passed to the script : $@"
echo "number of variables passed : $#"
echo "script name :$0"
echo "present directory : $PWD"
echo "who is running: $USER"
echo "home directory of current user: $HOME"
echo "PID of the script:$$"
sleep 100 &
echo "PID of recently excecuted background process: $!"
echo "all args passed to the script : $*"