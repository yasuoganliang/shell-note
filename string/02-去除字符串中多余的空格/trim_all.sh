#!/bin/env bash
#Description: Trim all white-space from string and truncate spaces
#Date: 2019-10-07 23:14:00

trim_all() {
	# Usage: trim_all " example  string "
	# set -f 禁用通配符 +f 启用通配符
	# set -- 会将所有的参数分配给位置参数，如果没有传参，就不设置
	set -f
	set -- $*
	printf "%s\n" "$*"
	set +f
}


trim_all "$*"
