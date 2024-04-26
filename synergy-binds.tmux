#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux unbind -n C-r
tmux bind-key -n C-r display-popup -h 4 -y 100 -E "$CURRENT_DIR/scripts/sendkeys.sh 'sandbox:'"

tmux unbind -n C-q
tmux bind-key -n C-q display-popup -h 4 -y 0 -E "$CURRENT_DIR/scripts/sendkeys.sh 'playground:'"
