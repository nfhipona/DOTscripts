#!/bin/bash
# Type: Alias setup script
# Created: October 2023

echo ""
echo "--------------"
echo ""

# run alias_runner script to run and load scripts found in alias/ folder
sh lib/alias_runner.sh

# load ~/.bash_profile to ~/.zshrc
# remove flag 'true' for ~/.bash_profile source
sh lib/load_bash_profile_to_zshrc.sh true

# reload ~/.zshrc
echo "🔄 Reload your '~/.zshrc' with command 'source ~/.zshrc' ↴"
echo "↳ or you can exit and re-open your Terminal.app. ↴"
echo "↳ Happy coding! 🎉🎉🎉"
echo "↳ Done. 🎊"

echo ""
echo "--------------"
echo ""