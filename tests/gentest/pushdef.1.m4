#!/bin/sh

# gentest/pushdef.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1294

. ${srcdir}/defs

cat <<\EOF >in
define(`foo', `Expansion one.')
foo
pushdef(`foo', `Expansion two.')
foo
popdef(`foo')
foo
popdef(`foo')
foo
EOF

cat <<\EOF >ok

Expansion one.

Expansion two.

Expansion one.

foo
EOF

$M4 -d in >out

$CMP -s out ok
