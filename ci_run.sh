#!/bin/sh
# vim:set sts=2 sw=2 tw=0 et:

case $FEATURES in
  huge | big | normal)
    opt="
      --enable-perlinterp
      --enable-pythoninterp
      --enable-python3interp
      --enable-rubyinterp
      --enable-luainterp" ;;
  small | tiny)
    opt="" ;;
esac

cd vim && \
  ./configure \
  --with-features=$FEATURES \
  $opt \
  --enable-fail-if-missing && make || exit

./src/vim --version

if [ "$TEST" = "yes" ]; then
  make test
fi
