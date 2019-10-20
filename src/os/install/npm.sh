#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_npm_package() {

    checkModule="$(npm ls -g  $2)"
    if [[ ! $checkModule =~ .*$2* ]]  ; then
    execute \
        ". $HOME/.bash.local \
            && npm install --global --silent $2" \
        "$1"
    else
	print_success "Skipping $2 package already installed"
    fi

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   npm\n\n"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_npm_package "npm (update)" "npm"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    printf "\n"

    install_npm_package "!nstant-markdown-d" "instant-markdown-d"
    install_npm_package "Babel" "babel-cli"
    install_npm_package "JSHint" "jshint"
    install_npm_package "Serverless" "serverless"
    install_npm_package "AWS Cli" "aws-cli"
    install_npm_package "Gulp" "gulp"
}

main
