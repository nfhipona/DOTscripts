#!/bin/bash
# Type: Simple git script
# Created: October 2023

# NOTE: 
# make sure to set this before using or running this script
# ticket code is can be your jira project identifier or something related
# ex. JIRA-1234
ticketcode="TICKET_CODE"

branchcode=$1
branch="$ticketcode-$branchcode"
branchtarget=$2

function runInvalidCommandMessage() {
    if [ ! -z $branchtarget ]; then
        echo "↳ Invalid command... branch code and branch target is required... ‼️"
    else
        echo "↳ Invalid or no branch code provided... ‼️"
    fi;
}

echo ""
echo "--------------"
echo ""

if [ ! -z $branchcode ] && [ ! -z $branchtarget ]; then
    patchbranch="origin/$branchtarget"
    echo "🔄 Creating a new branch '$branch' from '$branchtarget' ⚙️"
    git checkout -b $branch --no-track $patchbranch
    echo "🔄 Created and switched to a new '$branch' from tracked branch '$patchbranch' 🎉"
else
    runInvalidCommandMessage
fi;

echo ""
echo "--------------"
echo ""