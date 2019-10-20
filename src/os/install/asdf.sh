#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

install_asdf() {

    if ! cmd_exists "asdf"; then
        declare -r ASDF_REPO="https://github.com/asdf-vm/asdf.git"
        declare  r ASDF_BRANCH="v0.6.2"
        execute \
            " git clone --quiet $ASDF_REPO ~/.asdf --branch $ASDF_BRANCH \
        && echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc \
        && echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc" \
            "Install asdf" \
            || return 1
    else
        print_warning "ASDF alrady installed"
    fi
}

asdf_install_plugin() {

    if  cmd_exists "asdf"; then
        checkPlugin="$(asdf list)"
        if ! [[ $checkPlugin =~ .*$1* ]]  ; then
            execute "asdf plugin-add $1"``
        else
            print_success "Plugin $1 already installed"
        fi
    else
        print_error "ASDF not installed"
    fi

}

asdf_install_version() {

    if  cmd_exists "asdf"; then
        checkVersion="$(asdf list)"
        if ! [[ $checkVersion =~ .*$2* ]]  ; then
            execute "asdf install $1 $2"
            execute "asdf global $1 $2"
        else
            print_success "Version $2 for package $1 already installed"
        fi
    else
        print_error "ASDF not installed"
    fi
}
print_in_purple "\n   ASDF version manager \n\n"
install_asdf
print_in_purple "\n   ASDF \n\n"
