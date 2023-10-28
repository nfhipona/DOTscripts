#!/bin/bash
# Type: Contains alias setup script
# Created: October 2023

myscripts=$(echo "~/.myscripts")

# Usage:
# define variable to hold the long script
# cleandd="alias cleandd=\"$myscripts/xcode/clean_xcode_derivedata.sh\""
#
# call the function `add_alias_if_not_exists ALIAS` which equate to `echo "$cleandd" >> ~/.bash_profile`
# ex. add_alias_if_not_exists "$cleandd"
# ex. sh lib/add_alias_if_not_exists.sh "$cleandd"
add_alias="lib/add_alias_if_not_exists.sh"

# git --start

cbdev="alias cbdev=\"$myscripts/git/checkout_track_dev.sh\""
sh $add_alias "$cbdev"

cbpatch="alias cbpatch=\"$myscripts/git/checkout_track_patch.sh\""
sh $add_alias "$cbpatch"

# git --end