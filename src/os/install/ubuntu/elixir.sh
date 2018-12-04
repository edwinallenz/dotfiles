#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
download_debs() {

    declare -r TMP_DIR="/tmp"
    declare -r ERLANG_DEPS_URL="https://packages.erlang-solutions.com"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install plugins.

    execute  "wget -P $TMP_DIR \
             $ERLANG_DEPS_URL/erlang-solutions_1.0_all.deb  \
             && cd  $TMP_DIR \
             && sudo dpkg -i erlang-solutions_1.0_all.deb \
             && sudo apt-get update
             && mix local.hex" \
        || return 1

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

}
print_in_purple "\n   Elixir \n\n"
print_in_purple "\n   Downloading Elixir debs \n\n"
download_debs
install_package "Elixir APT Install" "esl-erlang elixir"


