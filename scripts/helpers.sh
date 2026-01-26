#!/usr/bin/env bash

# Helper functions for tmux-resource-monitor

get_option() {
	local option="$1"
	local default_value="$2"

	result=$(tmux show-option -gqv "$option" 2>/dev/null)
	if [ -z "$result" ]; then
		echo "$default_value"
	else
		echo "$result"
	fi
}

get_pane_pid() {
	tmux display-message -p "#{pane_pid}" 2>/dev/null
}
