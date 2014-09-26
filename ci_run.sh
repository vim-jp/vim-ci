#!/bin/sh
# vim:set sts=2 sw=2 tw=0 et:

cd vim && \
  ./configure \
  --with-features=$FEATURES \
  --enable-perlinterp \
  --enable-pythoninterp \
  --enable-python3interp \
  --enable-rubyinterp \
  --enable-luainterp \
  --enable-fail-if-missing && make && make test
