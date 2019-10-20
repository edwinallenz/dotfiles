#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_oh_my_zsh(){

    if ! cmd_exists "zsh"; then
        execute "wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh"
        execute "curl -L git.io/antigen > antigen.zsh"
    else
        execute "sudo chsh -s $(which zsh)"
        print_warning "Zsh alrady installed"
    fi
}
print_in_purple "\n   ZShell Install \n\n"
install_package "ZShell" "zsh"
install_oh_my_zsh
print_in_purple "\n   Oh My ZShell Install \n\n"
