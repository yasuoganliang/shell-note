#!/bin/env bash
#Description: Trim leading and trailing white-space from string
#Date: 2019-10-06
: '冒号(colon) 是 bash 中的一个内建命令
1. : [arguments]
    No effect; the command does nothing beyond expanding arguments and performing any specified redirections. A zero exit code is returned.
	可用于拓展参数，执行重定向
2. 可用作代码单行注释
: comment here
3．代码多行注释，参看当前几行
4. 重定向
: >filename # 这行会清空文件的内容
5. ${VAR:=DEFAULT} # 当变量 VAR 没有声明或者为 NULL 时，将 VAR 设置为默认值 DEFAULT
'

trim_string() {
    # Usage: trim_string " example string "
	: '
		[:space:]　表示空格
		＃井号表示从前往后截取匹配到的字符串, 两个 ## 表示截取到最长的匹配字符串
		% 百分号表示从后往前截取匹配到的字符串，和两个井号一样，截取到最长的匹配结果
		如: str=" hello, world "
		${str#*o} 一直截到逗号前的 o, ${str##*o} 截到第二个 o 的地方
		${str%l*} 会截掉 world 中的 ld, ${str%%l*} 会从 hello 的 l 开始截，最后剩下 he
		${1%%[![:space:]]*} 清除第一个参数的字符，留下空格
	'
	: "${1#"${1%%[![:space:]]*}"}"
	: "${_%"${_##*[![:space:]]}"}"
	printf '%s\n' "$_"
}

trim_string "$1"
