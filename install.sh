#!/bin/bash

rsync -rv --exclude=README.md --exclude=install.sh --exclude=.git $(dirname "$0")/ ~
# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself

