#!/bin/bash


echo "All the arguments passed to this script are: $@"
echo "The number of arguments passed to this script are: $#"
echo "The first argument passed to this script is: $1"
echo "Name of the script is: $0"
echo "Real path of the script is: $(realpath $0)"
echo "Who is running this script: $USER"
echo "Where is this script running: $PWD"
echo "home directory of the user running this script: $HOME"
echo "The process ID of the current script is: $$"

sleep 10 &

echo "The process ID of the last background command is: $!"
wait $!
echo "Current Line number of this script is: $LINENO"
echo "The exit status of the last command is: $?"
echo "Total Time taken to execute this script is: $SECONDS seconds"