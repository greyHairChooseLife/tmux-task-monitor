#!/usr/bin/env bash

# tmux-resource-monitor main plugin file
# This file is sourced by TPM when plugin is loaded

# Get plugin directory
PLUGIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set up keybinding when plugin loads
tmux bind-key t run-shell -t '~' "$PLUGIN_DIR/scripts/launch_monitor.sh"
