#!/bin/sh

# gentest/undivert.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2655

. ${srcdir}/defs

cat <<\EOF >in
divert(1)
This text is diverted first.
divert(0)undivert(1)dnl
undivert(1)
divert(1)
This text is also diverted but not appended.
divert(0)undivert(1)dnl
EOF

cat <<\EOF >ok

This text is diverted first.


This text is also diverted but not appended.
EOF

$M4 -d in >out

$CMP -s out ok
