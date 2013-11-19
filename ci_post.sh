#!/bin/sh
# vim:set sts=2 sw=2 tw=0 et:

cd vim

iconv -f EUC-KR -t UTF-8 < src/hangulin.c > src/hangulin.tmp
mv src/hangulin.tmp src/hangulin.c
iconv -f latin1 -t UTF-8 < src/digraph.c > src/digraph.tmp
mv src/digraph.tmp src/digraph.c

coveralls -b src -x .xs -e src/xxd -e src/if_perl.c
