#!/bin/sh

# gentest/pseudoar.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1114

. ${srcdir}/defs

cat <<\EOF >in
define(`echo', `$*')
echo(arg1,    arg2, arg3 , arg4)
EOF

cat <<\EOF >ok

arg1,arg2,arg3 ,arg4
EOF

$M4 -d in >out

$CMP -s out ok
