#!/bin/sh

# gentest/sysval.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 3346

. ${srcdir}/defs

cat <<\EOF >in
syscmd(`false')
ifelse(sysval, 0, zero, non-zero)
syscmd(`true')
sysval
EOF

cat <<\EOF >ok

non-zero

0
EOF

$M4 -d in >out

$CMP -s out ok
