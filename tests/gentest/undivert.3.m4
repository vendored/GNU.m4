#!/bin/sh

# gentest/undivert.3.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2681

. ${srcdir}/defs

cat <<\EOF >in
define(`bar', `BAR')
undivert(`foo')
include(`foo')
EOF

cat <<\EOF >ok

bar

BAR

EOF

M4PATH=$srcdir $M4 -d in >out

$CMP -s out ok
