#!/bin/env bash
#Description: Percent-encode a string
#Date: 2019-10-18 23:30:00

urlencode() {
	# Usage: urlencode "string"
	local LC_ALL=C
	for ((i=0; i < ${#1}; i++)); do
		: "${1:i:1}"
		case "$_" in
			[a-zA-Z0-9.~_-])
				printf '%s' "$_";;
			*)
				printf '%%%02X' "'$_";;
		esac
	done
	printf '\n'
}

urlencode "$1"
