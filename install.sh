#!/bin/bash

rsync -rv --exclude=README.md --exclude=install.sh --exclude=.git ./ ~

