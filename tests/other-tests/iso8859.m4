# Testing quotes
DEFINE			define(`test', `TEST')
CHANGEQUOTE(�,�)	changequote(�,�)
0 test			# TEST
1 �test�			# test
2 ��test��		# �test�
3 ���test���		# ��test��
dnl
changequote()dnl
CHANGEQUOTE(���,���)	changequote(���,���)
0 test			# TEST
1 �test�		# �TEST�
2 ��test��		# ��TEST��
3 ���test���			# test
changequote`'dnl
dnl
dnl
# Test use of all iso8859 characters except ^Z (win32 EOF) and NUL  ` '
define(`noquotes', `	
 !"#$%&()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_abcdefghijklmnopqrstuvwxyz{|}~��������������������������������������������������������������������������������������������������������������������������������')dnl
dnl
`Length of string is: 'len(defn(`noquotes'))
`Comparing strings: 'ifelse(defn(`noquotes'), `	
 !"#$%&()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_abcdefghijklmnopqrstuvwxyz{|}~��������������������������������������������������������������������������������������������������������������������������������', `MATCH', `NO MATCH')
dnl
dnl
# NUL does not pass through
define(`NUL_bug', `This will be seen. This will never be seen')dnl
NUL_bug
