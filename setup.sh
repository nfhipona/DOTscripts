#!/bin/bash
# Type: Setup script
# Created: October 2023

# equivalent to path: ~/.myscripts
symlinkdirectory="/Users/$USER/.myscripts"
myscripts=$(pwd)

# Symbolic Link
echo ""
echo "--------------"
echo ""
echo "Starting SymLink configuration for '$myscripts'"

#echo "Creating scripts directory at path '$symlinkdirectory'"
#mkdir -p "$symlinkdirectory"

echo "Linking directory '$myscripts' to temp '$symlinkdirectory'"
ln -sf $myscripts $symlinkdirectory
echo ""

if [ ! -z "$(ls -A $symlinkdirectory)" ]; then
    echo "SymLink successful..."
    ls -l $symlinkdirectory
    
    echo ""
    echo "Lists of files found on path '$symlinkdirectory':"
    ls -A $symlinkdirectory
else
    echo "SymLink failed..."
fi

echo ""
echo "--------------"
echo ""

echo ""
echo ""

echo "Please enjoy the booty!"
sh lib/boooty.sh

echo ""
echo ""