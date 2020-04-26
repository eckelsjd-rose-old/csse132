#!/bin/bash

# Write a command you would type in the shell (command line) to
# display the 10th line of sample.txt
# When this script runs, it should print 'this.'
#
# To run this command, type ./unix1.sh on the command line
#
# TODO: Write your command beneath this line.

head -n 10 sample.txt | tail -n 1 > answer.txt
cat answer.txt
