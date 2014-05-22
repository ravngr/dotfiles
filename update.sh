#!/bin/sh
cd "$( dirname "${BASH_SOURCE[0]}" )"
git submodule foreach git pull

