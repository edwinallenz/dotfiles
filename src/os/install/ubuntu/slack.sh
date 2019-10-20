#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
download_debs() {

    declare -r TMP_DIR="/tmp"
    declare -r SLACK_DEB_URL="https://downloads.slack-edge.com/linux_releases"
    declare -r SLACK_PACK_NAME="slack-desktop-2.8.1-amd64.deb"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install plugins.

    execute  "wget -P $TMP_DIR \
             $SLACK_DEB_URL/$SLACK_PACK_NAME  \
             && cd  $TMP_DIR \
             && sudo dpkg -i  $SLACK_PACK_NAME" \
                 || return 1

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

}
print_in_purple "\n   Slack \n\n"
install_package "Slack dependencies Install" "gconf2"
print_in_purple "\n   Downloading Slack debs \n\n"
download_debs
