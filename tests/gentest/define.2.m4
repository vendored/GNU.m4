#!/bin/sh

# gentest/define.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1007

. ${srcdir}/defs

cat <<\EOF >in
define(`array', `defn(format(``array[%d]'', `$1'))')
define(`array_set', `define(format(``array[%d]'', `$1'), `$2')')
array_set(4, `array element no. 4')
array_set(17, `array element no. 17')
array(4)
array(eval(10+7))
EOF

cat <<\EOF >ok




array element no. 4
array element no. 17
EOF

$M4 -d in >out

$CMP -s out ok
