#!/bin/sh

# gentest/defn.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1250

. ${srcdir}/defs

cat <<\EOF >in
define(`string', `The macro dnl is very useful
')
string
defn(`string')
EOF

cat <<\EOF >ok

The macro 
The macro dnl is very useful

EOF

$M4 -d in >out

$CMP -s out ok
