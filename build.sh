#!/bin/sh
set -e
set -u

git submodule update --init --recursive

# mruby
CONFIG=./mruby_build_config.rb rake -f mruby/Rakefile

# htslib
cd htslib
autoreconf -i
./configure
make
cd ..

# bcftools
cd bcftools
autoreconf -i
./configure
make
cd ..

bcftools/bcftools tanuki
