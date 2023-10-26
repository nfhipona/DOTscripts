# DOTscripts
My collection of development scripts that I invented for my use case. If you find it useful for yourself feel free to fork and modify to better suit your needs.

# Usage
1. Run `setup.sh`. 
This will create a folder `~/.myscript` and a SymLink will be created to your user path `/Users/$USER/.myscripts` -> `DOTscripts`. 
Ex. `/Users/nfhipona/.myscripts` -> `DOTscripts`

2. Run `create_alias.sh`.
This will add all necessary aliases available to your `~/.bash_profile` and `~/.zshrc`.
The configuration will use this path `~/.myscripts`.
Modify as you see fit.

3. You can start configuring the script with your custom settings so it would work based on your needs.
Ex. checkout `git` folder which contains git helper commands that needs modification before usage.

4. You can add and modify the scripts. 
Update `create_alias.sh` and run it again, or manually add or load your custom `aliases` to your `~/.bash_profile`.