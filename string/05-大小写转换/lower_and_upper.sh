#!/bin/env bash
#Desciption: Change a string
#Date: 2019-10-10 23:31:00

: '
还可以使用 declare 来声明一个指定格式的变量
declare -u upper
declare -l lower
'

# Change a string to lowercase
lower() {
	# Usage: lower "string"
	printf "before change to lowercase, the string is %s\n" "$1"
	# ,, 两个逗号会把 $1 全部替换为小写
	# , 一个逗号，把 $1 的首个字母替换微小写
	printf "%s\n" ${1,,}
	printf "after change to lowercase, the string is %s\n" "$_"
}

# Change a string to uppercase
upper() {
	# Usage: upper "string"
	printf "before change to uppercase, the string is %s\n" "$1"
	# ^^ 两个尖括号会把 $1 全部替换为大写
	# ^ 一个尖括号，把 $1 的首个字母替换为小写
	printf "%s\n" ${1^^}
	printf "after change to uppercase, the string is %s\n" "$_"
}

lower "$1"
upper "$1"
