#!/bin/sh

# gentest/eval.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 3230

. ${srcdir}/defs

cat <<\EOF >in
eval(666, 10)
eval(666, 11)
eval(666, 6)
eval(666, 6, 10)
eval(-666, 6, 10)
EOF

cat <<\EOF >ok
666
556
3030
0000003030
-000003030
EOF

$M4 -d in >out

$CMP -s out ok
