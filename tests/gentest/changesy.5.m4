#!/bin/sh

# gentest/changesy.5.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2201

. ${srcdir}/defs

cat <<\EOF >in
define(`test', `TEST')
changesyntax(`L<', `R>')
<test>
`test>
changequote(<[>, `]')
<test>
[test]
EOF

cat <<\EOF >ok


test
test

<TEST>
test
EOF

$M4 -d in >out

$CMP -s out ok
