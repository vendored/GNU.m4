#!/bin/sh

# gentest/regexp.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2853

. ${srcdir}/defs

cat <<\EOF >in
regexp(`GNUs not Unix', `\<[a-z]\w+')
regexp(`GNUs not Unix', `\<Q\w*')
EOF

cat <<\EOF >ok
5
-1
EOF

$M4 -d in >out

$CMP -s out ok
