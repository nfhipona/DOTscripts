#!/bin/bash
# Type: Runner for custom alias scripts
# Created: October 2023

alias_path="alias/"

# configure ~/.bash_profile add new line
function check_and_lists_aliases() {
    # list aliases scripts
    if [ ! -z "$(ls $alias_path)" ]; then
        echo "Lists of scripts found on path '$alias_path':"
        ls $alias_path

        read_and_run_aliases
    else
        echo "No scripts found on path '$alias_path'"
        echo ""
    fi
}

function read_and_run_aliases() {
    # add new line and run add script
    echo "" >> ~/.bash_profile

    # read and iterate through aliases scripts
    for file in $alias_path*
    do
        echo ""
        echo "Running script: $file"
        sh $file
        echo "Done."
    done
}

check_and_lists_aliases