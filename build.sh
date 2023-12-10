#!/bin/sh
set -e
set -u

git submodule update --init --recursive

CONFIG=./myconfig.rb rake -f mruby/Rakefile
cd bcftools
autoreconf -i
./configure
make

# ./bcftools tanuki
