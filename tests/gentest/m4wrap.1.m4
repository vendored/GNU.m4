#!/bin/sh

# gentest/m4wrap.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2395

. ${srcdir}/defs

cat <<\EOF >in
define(`cleanup', `This is the `cleanup' actions.
')
m4wrap(`cleanup')
This is the first and last normal input line.
EOF

cat <<\EOF >ok


This is the first and last normal input line.
This is the cleanup actions.
EOF

$M4 -d in >out

$CMP -s out ok
