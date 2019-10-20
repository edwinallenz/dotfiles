#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setup() {

    add_key "https://download.docker.com/linux/ubuntu/gpg" \
        || print_error "Docker add key (add key)"


    add_repo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
        || print_error "Error add ppa docker"

    execute \
        "sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose" \
        "sudo chmod +x /usr/local/bin/docker-compose" \
        "sudo gpasswd -a $USER docker"

}
print_in_purple "\n   Docker \n\n"
install_package "APT Transport" "apt-transport-https"
install_package "CA Certificates" "ca-certificates"
install_package "Software properties" "software-properties-common"
setup
install_package "Install docker ce" "docker-ce"
