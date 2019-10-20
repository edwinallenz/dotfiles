#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh" \
    && . "../asdf.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
config() {

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install plugins.

    execute  "mix local.hex" \
        || return 1
   # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
}


install_asdf_elixir_plugin(){

    asdf_install_plugin "elixir"
    asdf_install_plugin "erlang"
    asdf_install_version "erlang" "21.2"
    asdf_install_version "elixir" "1.7.4"

}

print_in_purple "\n   Elixir \n\n"
print_in_purple "\n   Downloading Elixir debs \n\n"
install_package "Libssl" "libssl-dev"
install_package "Automake" "automake"
install_package "Autoconf" "autoconf"
install_package "Libncurses" "libncurses5-dev"
install_asdf_elixir_plugin
config
#install_package "Elixir APT Install" "esl-erlang elixir"
