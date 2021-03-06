#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

print_load_average() {
    printf "$(uptime | awk -F "averages?:" '{print $2}')"
}

main() {
	print_load_average
}
main
