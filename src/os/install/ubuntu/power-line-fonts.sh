#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Powerline fonts \n\n"
install_package "Powerline fonts" "fonts-powerline"
print_in_purple "\n   Power line fonts \n\n"
