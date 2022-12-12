#!/bin/bash

set -ex

VERSION="$1"
NAME="${2:-$VERSION}"


LOG="$HOME/.kerl/builds/$VERSION/otp_build_git.log"
echo "Log: $LOG"

kerl build git https://github.com/emqx/otp.git "$VERSION" "$VERSION"

kerl install "$VERSION" "$HOME/.asdf/installs/erlang/$NAME"



