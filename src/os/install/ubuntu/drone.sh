#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
install_plugins() {


    declare -r ZSHELL_URL="http://downloads.drone.io/release/linux/amd64/drone.tar.gz"
    declare tmpDir="/tmp"
    tmpFile="$(mktemp /tmp/drone)"

    download "$ZSHELL_URL" "$tmpFile"
    print_result $? "Download archive" "true"
    printf "\n"
    extract "$tmpFile" "$tmpDir"
    execute "echo $tmpFile"
    execute "mv $tmpFile $tmpDir/drone"
    execute "sudo install -t /usr/local/bin /tmp/drone"

    # drone secret add   --image=plugins/docker yalochat/elastic_analytics DOCKER_USERNAME fredyalo
    # drone secret add   --image=plugins/docker yalochat/elastic_analytics DOCKER_PASSWORD y@l3r0sgt
}
print_in_purple "\n   Drone \n\n"
install_plugins
