#!/bin/env bash
#Description: Trim quotes from a string
#Date: 2019-10-13 23:26:00

function trim_quotes() {
	# Usage: trim_quotes "string"
	# 先去除单引号
	: "${1//\'}"
	# 去除双引号
	printf '%s\n' "${_//\"}"
}

trim_quotes "$1"
