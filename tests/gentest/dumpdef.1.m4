#!/bin/sh

# gentest/dumpdef.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1660

. ${srcdir}/defs

cat <<\EOF >in
define(`foo', `Hello world.')
dumpdef(`foo')
dumpdef(`define')
EOF

cat <<\EOF >ok



EOF

cat <<\EOF >okerr
foo:	`Hello world.'
define:	<define>
EOF

$M4 -d in >out 2>err
sed -e "s, ../../src/m4:, m4:," err >sederr && mv sederr err

$CMP -s out ok && $CMP -s err okerr
