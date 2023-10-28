#!/bin/bash
# Type: Alias setup helper script
# Created: October 2023

# Usage:
# define variable to hold the long script
# cleandd="alias cleandd=\"$myscripts/xcode/clean_xcode_derivedata.sh\""
#
# call the function `add_alias_if_not_exists ALIAS` which equate to `echo "$cleandd" >> ~/.bash_profile`
# ex. add_alias_if_not_exists "$cleandd"
function add_alias_if_not_exists() {
    if [ ! -z "$(grep -Fx "$1" ~/.bash_profile)" ]; then
        # code if found
        echo "↳ Alias '$1' is already added to ~/.bash_profile ↴"
    else
        # code if not found
        # add new line and run add script
        echo "↳ Adding alias '$1' to ~/.bash_profile ↴"
        echo "$1" >> ~/.bash_profile
    fi
    echo "↳ Done. ↴"
}

add_alias_if_not_exists "$1"