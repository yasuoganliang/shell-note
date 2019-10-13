#!/bin/env bash
#Description: Reverse a string case
#Date: 2019-10-13 23:10:00

function reverse_case() {
	# Usage: reverse_case "string"
	printf '%s\n' "${1~~}"
}


reverse_case "$1"
