#!/bin/bash
# Type: Alias setup script
# Created: October 2023

myscripts=$(echo "~/.myscripts")

# configure ~/.zshrc
# 
function add_bash_profile_to_zshrc_if_not_exists() {
    echo ""
    echo "" >> ~/.zshrc
    zshrc_bash="source ~/.bash_profile"
    
    if [ ! -z "$(grep -Fx "$zshrc_bash" ~/.zshrc)" ]; then
        # code if found
        echo "Profile ~/.bash_profile is already loaded to ~/.zshrc"
    else
        # code if not found
        echo "Adding ~/.bash_profile config to ~/.zshrc ..."
        
        echo "" >> ~/.zshrc
        echo $zshrc_bash >> ~/.zshrc
        echo "Profile ~/.bash_profile loaded to ~/.zshrc"
    fi
    
    echo ""
}

# Usage:
# define variable to hold the long script
# cleandd="alias cleandd=\"$myscripts/xcode/clean_xcode_derivedata.sh\""
#
# call the function `add_alias_if_not_exists ALIAS` which equate to `echo "$cleandd" >> ~/.bash_profile`
# ex. add_alias_if_not_exists "$cleandd"
function add_alias_if_not_exists() {
    if [ ! -z "$(grep -Fx "$1" ~/.bash_profile)" ]; then
        # code if found
        echo "Alias '$1' is already added to bash_profile"
    else
        # code if not found
        echo "Adding alias '$1' to bash_profile..."
        echo "$1" >> ~/.bash_profile
        echo "Done."
    fi
}

echo ""
echo "--------------"
echo ""

# configure ~/.bash_profile
echo "" >> ~/.bash_profile

# xcode --start
cleandd="alias cleandd=\"$myscripts/xcode/clean_xcode_derivedata.sh\""
add_alias_if_not_exists "$cleandd"
# xcode --end

# git --start
cbdev="alias cbdev=\"$myscripts/git/checkout_track_dev.sh\""
add_alias_if_not_exists "$cbdev"

cbpatch="alias cbpatch=\"$myscripts/git/checkout_track_patch.sh\""
add_alias_if_not_exists "$cbpatch"
# git --end

# call zshrc function and configure ~/.zshrc
add_bash_profile_to_zshrc_if_not_exists

# reload ~/.zshrc
echo "Reloading ~/.zshrc"
source ~/.zshrc
echo "Done."

echo ""
echo "--------------"
echo ""