#!/bin/bash
# Type: Simple shell script for detecting new line on a file
# Created: October 2023

# get input file path: ex. '~/.zshrc'
c=`tail -c 1 $1`
if [ "$c" != "" ]; then
    echo ""
    echo "✉️  Adding new line to file $1"
    echo "" >> $1
    echo "↳ Done. 🎉"
fi