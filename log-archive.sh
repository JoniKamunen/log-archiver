#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments, please give directory"
    echo "First argument should be the directory containing the \".log\" files."
    echo "For example ./log-archive.sh example_directory"
    exit
fi

for logfile in ${1}/*.log; do
    echo "Compressing $logfile"
    tar -cvzf ${logfile}.tar.gz $logfile
done
