#!/bin/sh

# gentest/include.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2454

. ${srcdir}/defs

cat <<\EOF >in
include(`no-such-file')
sinclude(`no-such-file')
EOF

cat <<\EOF >ok


EOF

cat <<\EOF >okerr
in:1: m4: Cannot open no-such-file: No such file or directory
EOF

M4PATH=$srcdir $M4 -d in >out 2>err
sed -e "s, ../../src/m4:, m4:," err >sederr && mv sederr err

$CMP -s out ok && $CMP -s err okerr
