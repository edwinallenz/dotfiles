#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh" \
    && . "../asdf.sh"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

asdf_key_ring(){
    execute "bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring"
}

print_in_purple "\n   NodeJS\n\n"

asdf_install_plugin "nodejs"
asdf_key_ring
asdf_install_version "nodejs" "10.15.0"
#install_package "Node" "node"
#install_package "NodeJs" "node"
