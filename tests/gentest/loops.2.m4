#!/bin/sh

# gentest/loops.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1546

. ${srcdir}/defs

cat <<\EOF >in
define(`reverse', `ifelse($#, 0, , $#, 1, ``$1'',
			  `reverse(shift($@)), `$1'')')
reverse
reverse(foo)
reverse(foo, bar, gnats, and gnus)
EOF

cat <<\EOF >ok


foo
and gnus, gnats, bar, foo
EOF

$M4 -d in >out

$CMP -s out ok
