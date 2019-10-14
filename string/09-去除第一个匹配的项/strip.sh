#!/bin/env bash
#Description: Strip first occurrence of pattern from string
#Date: 2019-10-14 23:35:00

strip() {
	# Usage: strip "string" "pattern"
	# ${parameter/pattern/string} 一个斜杆会替换掉第一个匹配的项
	# ${parameter//pattern/string} 两个斜杆会替换所有匹配的项
	# ${parameter/#pattern/string} 井号会替换掉以 pattern 开头的项
	# ${parameter/%pattern/string} 百分号会替换掉以 pattern 结尾的项
	printf '%s\n' "${1/$2}"
}

strip "$1" "$2"
