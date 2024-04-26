#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux unbind -n C-r
tmux bind-key -n C-r display-popup -E "$CURRENT_DIR/scripts/sendkeys.sh"

