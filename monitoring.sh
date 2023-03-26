#!/bin/bash

# Set the time interval (in seconds) for monitoring
INTERVAL=5


echo "Date,Message" > my_file.csv

# Add some data to the CSV file
# echo "2023-03-26,Hello World" >> my_file.csv


# Get the PID of the process with the highest CPU usage
get_top_process() {
    ps -eo pid,%cpu,comm --sort=-%cpu | awk 'NR==2 {print $1}'
}

# Print the CPU usage of the top process
print_top_cpu_usage() {
    top_process=$(get_top_process)
    cpu_usage=$(ps -p $top_process -o %cpu | awk 'NR==2 {print $1}')
    echo "Top process (PID $top_process) CPU usage: $cpu_usage%"
}

# Continuously monitor the top process
while true; do
    print_top_cpu_usage
    sleep $INTERVAL


done
