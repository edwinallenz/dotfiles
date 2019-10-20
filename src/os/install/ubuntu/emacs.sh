#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
install_plugins() {

    declare -r SPACEMACS_DIR="$HOME/.emacs.d"
    declare -r SPACEMACS_GIT_REPO_URL="https://github.com/syl20bnr/spacemacs"
    
    # if [ ! -z "$(ls -A $SPACEMACS_DIR)" ]; then
        # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

       # Install plugins.

       execute \
           "   git clone --quiet '$SPACEMACS_GIT_REPO_URL' '$SPACEMACS_DIR' \
            && printf '\n' |  emacs + PluginInstall +qall" \
           "Install plugins" \
           || return 1

       # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # else
    #     print_success "Ignoring dot spacemacs file, already exists"
    # fi

}
print_in_purple "\n   GNU emacs \n\n"
install_package "GNU Emacs" "emacs25"
print_in_purple "\n   GNU emacs \n\n"
install_plugins
