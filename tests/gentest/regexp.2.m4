#!/bin/sh

# gentest/regexp.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2865

. ${srcdir}/defs

cat <<\EOF >in
regexp(`GNUs not Unix', `\w\(\w+\)$', `*** \& *** \1 ***')
EOF

cat <<\EOF >ok
*** Unix *** nix ***
EOF

$M4 -d in >out

$CMP -s out ok
