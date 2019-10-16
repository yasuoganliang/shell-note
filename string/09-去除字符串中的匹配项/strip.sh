#!/bin/env bash
#Description: Strip pattern from start of string, Strip pattern from end of string
#Date: 2019-10-16 23:36:00

lstrip() {
	# Usage lstrip "string" "pattern"
	printf '%s\n' "${1##$2}"
}


rstrip() {
	# Usage rstrip "string" "pattern"
	printf '%s\n' "${1%%$2}"
}

printf "after lstrip\n"
lstrip "$1" "$2"

printf "after rstrip\n"
rstrip "$1" "$2"
