#!/bin/sh

# gentest/changeco.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1980

. ${srcdir}/defs

cat <<\EOF >in
define(`comment', `COMMENT')
changecom
# Not a comment anymore
EOF

cat <<\EOF >ok


# Not a COMMENT anymore
EOF

$M4 -d in >out

$CMP -s out ok
