#!/bin/sh

# gentest/divert.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2600

. ${srcdir}/defs

cat <<\EOF >in
divert(-1)
define(`foo', `Macro `foo'.')
define(`bar', `Macro `bar'.')
divert
EOF

cat <<\EOF >ok

EOF

$M4 -d in >out

$CMP -s out ok
