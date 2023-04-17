#!/bin/bash

# Run top command and filter output to show only the process with the highest CPU usage
top -b -n 1 | grep "^ " | sort -k9 -n -r | head -1

