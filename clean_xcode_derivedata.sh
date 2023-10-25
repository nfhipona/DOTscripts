#!/bin/bash
# Type: Simple xcode script
# Author: Neil Francis Ramirez Hipona
# Created: October 2023

# Capture flag set `true` to pause in every run scripts
flag=$1
# Capture flag set `true` to include hidden files in every run scripts
showHiddenFlag=""

if [ ! -z $2 ] && $2; then
    showHiddenFlag="-A"
fi;

folderPath="/Users/$USER/Library/Developer/Xcode/DerivedData/"

function pause() {
    if [ ! -z $flag ] && $flag; then
        echo ""
        read -s -n 1 -p "Press any mekus key to continue . . ."
        echo ""
    fi;
}

function purgePath() {
    # call pause/break
    pause

    # Proceed on deleting files in the target directory
    echo ""
    echo "Purging path '$folderPath'"
    rm -rf $folderPath* -y

    showPurgeMessage
}

function showPurgeMessage() {
    if [ -z "$(ls $showHiddenFlag $folderPath)" ]; then
        echo "Purged..."
        echo "--------------"
        echo ""
    else
        echo "Purge failed..."
        echo ""
        echo "Remaining files:"
        ls $showHiddenFlag $folderPath
        echo "--------------"
        echo ""
    fi
}

function startPurge() {
    echo ""
    echo "--------------"
    echo "Staring cleanup for '$USER'"

    # List all files in the directory
    if [ ! -z "$(ls $showHiddenFlag $folderPath)" ]; then
        echo ""
        echo "Lists of files found on path '$folderPath':"
        ls $showHiddenFlag $folderPath

        # call purge path
        purgePath
    else
        echo ""
        echo "No files found on path '$folderPath'"
        echo "--------------"
        echo ""
    fi
}

startPurge