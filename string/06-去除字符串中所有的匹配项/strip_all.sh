#!/bin/env bash
#Description: Strip all instances of pattern from string
#Date: 2019-10-11 23:35:00

strip_all() {
	# Usage: strip_all "string" "pattern"
	# ${parameter//pattern/string} 会把所有的匹配项都替换掉
	# 此处把第一个参数中所有匹配的第二个参数的项全部替换为空
	printf '%s\n' "${1//$2}"
}

strip_all "$1" "$2"
