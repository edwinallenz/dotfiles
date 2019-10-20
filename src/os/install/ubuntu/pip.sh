#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n Python 3  Pip\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

pip_install "awscli --upgrade --user"
install_package "Python 3 Pip" "python3-pip"
install_package "Chromium" "chromium-browser"
