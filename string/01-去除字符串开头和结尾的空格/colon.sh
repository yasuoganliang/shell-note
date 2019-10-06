#!/bin/env bash
if [[ "$VERBOSE" == "" || "$VERBOSE" == "0" ]]; then
    vecho=":"     # no "verbose echo"
else
    vecho=echo    # enable "verbose echo"
fi

$vecho "Verbose echo is ON"
