#!/bin/env bash
#Description: Decode a percent-encoded string
#Date: 2019-10-20 22:50:00

urldecode() {
	# Usage: urldecode "string"
	: "${1//+/}"
	printf '%b\n' "${_//%/\\x}"
}

urldecode "$1"
