#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
install_plugins() {

    declare -r SPACEMACS_DIR="$HOME/.emacs.d"
    declare -r SPACEMACS_GIT_REPO_URL="https://github.com/syl20bnr/spacemacs"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install plugins.

    execute \
         "   git clone --quiet '$SPACEMACS_GIT_REPO_URL' '$SPACEMACS_DIR' \
            && printf '\n' |  emacs + PluginInstall +qall" \
        "Install plugins" \
        || return 1

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

}
print_in_purple "\n   GNU emacs \n\n"
install_package "GNU Emacs" "emacs25"
print_in_purple "\n   GNU emacs \n\n"
install_plugins
