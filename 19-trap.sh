#!/bin/bash

set -e #ERR
trap 'echo "There is an error in the Line: $LINENO, COMMAND: $BASH_COMMAND"' ERR
echo "Kanishk"
echoo "Age:26"
echo "Male"