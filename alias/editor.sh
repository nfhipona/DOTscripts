#!/bin/bash
# Type: Contains alias setup script
# Created: April 2024

# Usage:
# call the function `add_alias_if_not_exists ALIAS` which equate to `echo "$cleandd" >> ~/.bash_profile`
# ex. add_alias_if_not_exists "$cleandd"
# ex. sh lib/add_alias_if_not_exists.sh "$cleandd"
add_alias="lib/add_alias_if_not_exists.sh"

# xcode --start

vsc="alias vsc=\"open -a 'Visual Studio Code'\""
sh $add_alias "$vsc"

zed="alias zed=\"open -a Zed\""
sh $add_alias "$zed"

# xcode --end