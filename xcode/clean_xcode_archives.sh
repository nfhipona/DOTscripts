#!/bin/bash
# Type: Simple xcode script
# Created: March 2024

# Capture flag set `true` to pause in every run scripts
flag=$1

folderPath="/Users/$USER/Library/Developer/Xcode/Archives/"

function pause() {
    if [ ! -z $flag ] && $flag; then
        echo ""
        read -s -n 1 -p "🔄 Press any mekus key to continue . . ."
        echo ""
    fi;
}

function purgePath() {
    # call pause/break
    pause

    # Proceed on deleting files in the target directory
    echo ""
    echo "↳ Purging path '$folderPath' ‼️"
    rm -rf $folderPath* -y

    showPurgeMessage
}

function showPurgeMessage() {
    if [ -z "$(ls $folderPath)" ]; then
        echo "↳ Purged... ‼️"
    else
        echo "↳ Purge failed... ‼️"
        echo ""
        echo "📝 Remaining files: ↴"
        ls $folderPath
    fi
}

function startPurge() {
    echo "⚙️  Starting cleanup for '$USER'"

    # List all files in the directory
    if [ ! -z "$(ls $folderPath)" ]; then
        echo ""
        echo "📝 Lists of files found on path '$folderPath': ↴"
        ls $folderPath

        # call purge path
        purgePath
    else
        echo ""
        echo "📝 No files found on path '$folderPath'"
    fi
}

echo ""
echo "--------------"
echo ""

startPurge
echo "➤ Done. 🎉"

echo ""
echo "--------------"
echo ""
