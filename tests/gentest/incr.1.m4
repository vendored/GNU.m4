#!/bin/sh

# gentest/incr.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 3105

. ${srcdir}/defs

cat <<\EOF >in
incr(4)
decr(7)
EOF

cat <<\EOF >ok
5
6
EOF

$M4 -d in >out

$CMP -s out ok
