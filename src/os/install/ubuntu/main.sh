#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./build-essentials.sh
./../nvm.sh

./browsers.sh
./compression_tools.sh
./git.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./../npm.sh
./tmux.sh
../emacs.sh
./yakuake.sh
./../asdf.sh
./zshell.sh
./slack.sh
./cleanup.sh
./tweak_tool.sh
./docker.sh
./elixir.sh
./diodon.sh
