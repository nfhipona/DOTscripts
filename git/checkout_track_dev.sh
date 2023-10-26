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

echo ""
echo "--------------"
echo ""

if [[ ! -z $branchcode ]]; then
    echo "Creating a new branch '$branch' from develop"
    git checkout -b $branch --no-track origin/develop
    echo "Created and switched to a new '$branch'"
else
    echo "Invalid or no branch code provided..."
fi;

echo ""
echo "--------------"
echo ""