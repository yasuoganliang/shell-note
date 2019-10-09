#!/bin/env bash
#Description: Split a string on a delimiter
#Date: 2019-10-09 23:47:00

function split() {
	# Usage: split "string" "delimiter"
	# <<< 将字符串拓展成单个字符并通过标准输入到 arr 中
	# "${1//$2$'\n'}" 字符串替换，将 1 中匹配到的 2 全部替换替换为换行符
	# read 参数
	# -d delimiter 用字符串 delimiter 中的第一个字符指示输入结束，而不是一个换行符。
	# -a array 把输入赋值到数组 array 中，从索引号零开始
	# -r Raw mode. 不把反斜杠字符解释为转义字符
	IFS=$'\n' read -d "" -ra arr <<< "${1//$2/$'\n'}"
	printf "%s\n" "${arr[@]}"
}

split "$1" "$2"
