#!/bin/env bash
#Description: Use regex on a string
#Date: 2019-10-08 23:12:00

function regex() {
	# Usage: regex "string" "regex"
	# BASH_REMATCH 为一个数组，存放了所有的匹配结果
	[[ $1 =~ $2 ]] && printf "%s\n" "${BASH_REMATCH[1]}"
}

regex "$1" "$2"
