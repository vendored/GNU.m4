#!/bin/sh

# gentest/include.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2474

. ${srcdir}/defs

cat <<\EOF >in
define(`foo', `FOO')
include(`incl.m4')
EOF

cat <<\EOF >ok

Include file start
FOO
Include file end

EOF

M4PATH=$srcdir $M4 -d in >out

$CMP -s out ok
