#!/bin/sh

# gentest/changesy.3.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2158

. ${srcdir}/defs

cat <<\EOF >in
define(`test', `$1$2$3')
test(a, b, c)
changesyntax(`O         ')
test(a, b, c)
EOF

cat <<\EOF >ok

abc

a b c
EOF

$M4 -d in >out

$CMP -s out ok
