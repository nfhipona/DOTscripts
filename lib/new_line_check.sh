#!/bin/bash
# Type: Simple shell script for detecting new line on a file
# Created: October 2023

# get input file path: ex. '~/.zshrc'
c=`tail -c 1 $1`
if [ "$c" != "" ]; then
    echo "" >> $1
    echo "New line is added to $1"
fi