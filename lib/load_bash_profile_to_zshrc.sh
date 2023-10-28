#!/bin/bash
# Type: bash_profile setup helper script
# Created: October 2023

# configure ~/.zshrc
# load ~/.bash_profile to ~/.zshrc
function add_bash_profile_to_zshrc_if_not_exists() {
    echo ""
    echo "Configuring ~/.zshrc"

    zshrc_bash="source ~/.bash_profile"
    
    if [ ! -z "$(grep -Fx "$zshrc_bash" ~/.zshrc)" ]; then
        # code if found
        echo "Profile ~/.bash_profile is already loaded to ~/.zshrc"
    else
        # code if not found
        echo "Adding ~/.bash_profile config to ~/.zshrc"
        
        # add new line
        echo "" >> ~/.zshrc
        echo "" >> ~/.zshrc

        echo $zshrc_bash >> ~/.zshrc
        echo "Profile ~/.bash_profile loaded to ~/.zshrc"
    fi
    
    echo "Done."
    echo ""
}

# get flag
# defaults: false -- source is ~/.bash_profile
# flag = true, -- source is ~/.zshrc
flag=$1

if [ ! -z $flag ] && $flag; then
    add_bash_profile_to_zshrc_if_not_exists
else
    echo ""
    echo "Source defaults to ~/.bash_profile"
    echo "Nothing to do here..."
    echo ""
fi;