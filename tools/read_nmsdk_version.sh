#!/usr/bin/env bash
# Read the version of NMSDK from .__init__.py

# First, get just the line with the version in it
ver_line=$(grep 'version' ./__init__.py)
# THen split it to get just the numbers
blah=$(echo "$ver_line" | grep -o -E '[0-9]')

# Function c/o https://stackoverflow.com/a/17841619
function join_by { local IFS="$1"; shift; echo "$*"; }

# Finally, join the numbers together with a '.'
ver_str=$(join_by . $blah)

# Return the version
echo "$ver_str"