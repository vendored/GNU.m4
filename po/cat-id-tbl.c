/* Automatically generated by po2tbl.sed from m4.pot.  */

#if HAVE_CONFIG_H
# include <config.h>
#endif

#include "libgettext.h"

const struct _msg_ent _msg_tbl[] = {
  {"", 1},
  {"%s: option `%s' is ambiguous\n", 2},
  {"%s: option `--%s' doesn't allow an argument\n", 3},
  {"%s: option `%c%s' doesn't allow an argument\n", 4},
  {"%s: option `%s' requires an argument\n", 5},
  {"%s: unrecognized option `--%s'\n", 6},
  {"%s: unrecognized option `%c%s'\n", 7},
  {"%s: illegal option -- %c\n", 8},
  {"%s: invalid option -- %c\n", 9},
  {"%s: option requires an argument -- %c\n", 10},
  {"%s: option `-W %s' is ambiguous\n", 11},
  {"%s: option `-W %s' doesn't allow an argument\n", 12},
  {"memory exhausted", 13},
  {"Success", 14},
  {"No match", 15},
  {"Invalid regular expression", 16},
  {"Invalid collation character", 17},
  {"Invalid character class name", 18},
  {"Trailing backslash", 19},
  {"Invalid back reference", 20},
  {"Unmatched [ or [^", 21},
  {"Unmatched ( or \\(", 22},
  {"Unmatched \\{", 23},
  {"Invalid content of \\{\\}", 24},
  {"Invalid range end", 25},
  {"Memory exhausted", 26},
  {"Invalid preceding regular expression", 27},
  {"Premature end of regular expression", 28},
  {"Regular expression too big", 29},
  {"Unmatched ) or \\)", 30},
  {"No previous regular expression", 31},
  {"Warning: Too few arguments to built-in `%s'", 32},
  {"Warning: Excess arguments to built-in `%s' ignored", 33},
  {"Non-numeric argument to built-in `%s'", 34},
  {"INTERNAL ERROR: Bad token data type in define_macro ()", 35},
  {"Undefined name %s", 36},
  {"INTERNAL ERROR: Builtin not found in builtin table!", 37},
  {"INTERNAL ERROR: Bad token data type in m4_dumpdef ()", 38},
  {"Undefined name `%s'", 39},
  {"INTERNAL ERROR: Bad symbol type in m4_defn ()", 40},
  {"Cannot open pipe to command `%s'", 41},
  {"Radix in eval out of range (radix = %d)", 42},
  {"Negative width to eval", 43},
  {"Non-numeric argument to %s", 44},
  {"Cannot undivert %s", 45},
  {"Undefined syntax code %c", 46},
  {"Cannot open %s", 47},
  {"Debugmode: bad debug flags: `%s'", 48},
  {"Cannot set error file: %s", 49},
  {"WARNING: \\0 will disappear, use \\& instead in replacements", 50},
  {"Bad regular expression `%s': %s", 51},
  {"Error matching regular expression `%s'", 52},
  {"INTERNAL ERROR: Builtin not found in builtin table! (trace_pre ())", 53},
  {"INTERNAL ERROR: Bad token data type (trace_pre ())", 54},
  {"Bad expression in eval (missing right parenthesis): %s", 55},
  {"Bad expression in eval: %s", 56},
  {"Bad expression in eval (bad input): %s", 57},
  {"Bad expression in eval (excess input): %s", 58},
  {"Divide by zero in eval: %s", 59},
  {"Modulo by zero in eval: %s", 60},
  {"INTERNAL ERROR: Bad error code in evaluate ()", 61},
  {"INTERNAL ERROR: Bad comparison operator in cmp_term ()", 62},
  {"INTERNAL ERROR: Bad shift operator in shift_term ()", 63},
  {"INTERNAL ERROR: Bad operator in mult_term ()", 64},
  {"INTERNAL ERROR: Built-in not found in builtin table!", 65},
  {"INTERNAL ERROR: Bad token data type in freeze_one_symbol ()", 66},
  {"Expecting line feed in frozen file", 67},
  {"Expecting character `%c' in frozen file", 68},
  {"Ill-formated frozen file", 69},
  {"Premature end of frozen file", 70},
  {"`%s' from frozen file not found in builtin table!", 71},
  {"Input reverted to %s, line %d", 72},
  {"Input read from %s", 73},
  {"INTERNAL ERROR: Recursive push_string!", 74},
  {"INTERNAL ERROR: Bad call to init_macro_token ()", 75},
  {"INTERNAL ERROR: Input stack botch in next_char ()", 76},
  {"INTERNAL ERROR: Input stack botch in peek_input ()", 77},
  {"NONE", 78},
  {"ERROR: EOF in string", 79},
  {"ERROR: Stack overflow.  (Infinite define recursion?)", 80},
  {"Try `%s --help' for more information.\n", 81},
  {"Usage: %s [OPTION]... [FILE]...\n", 82},
  {"\
Mandatory or optional arguments to long options are mandatory or optional\n\
for short options too.\n\
\n\
Operation modes:\n\
      --help                   display this help and exit\n\
      --version                output version information and exit\n\
  -e, --interactive            unbuffer output, ignore interrupts\n\
  -E, --fatal-warnings         stop execution after first warning\n\
  -Q, --quiet, --silent        suppress some warnings for builtins\n\
  -P, --prefix-builtins        force a `m4_' prefix to all builtins\n", 83},
  {"  -W, --word-regexp=REGEXP     use REGEXP for macro name syntax\n", 84},
  {"\
\n\
Dynamic loading features:\n\
  -m, --module-directory=DIRECTORY  add DIRECTORY to the module search path\n\
  -M, --load-module=MODULE          load dynamic MODULE from M4MODPATH\n", 85},
  {"\
\n\
Preprocessor features:\n\
  -I, --include=DIRECTORY      search this directory second for includes\n\
  -D, --define=NAME[=VALUE]    enter NAME has having VALUE, or empty\n\
  -U, --undefine=NAME          delete builtin NAME\n\
  -s, --synclines              generate `#line NO \"FILE\"' lines\n", 86},
  {"\
\n\
Limits control:\n\
  -G, --traditional            suppress all GNU extensions\n\
  -H, --hashsize=PRIME         set symbol lookup hash table size\n\
  -L, --nesting-limit=NUMBER   change artificial nesting limit\n", 87},
  {"\
\n\
Frozen state files:\n\
  -F, --freeze-state=FILE      produce a frozen state on FILE at end\n\
  -R, --reload-state=FILE      reload a frozen state from FILE at start\n", 88},
  {"\
\n\
Debugging:\n\
  -d, --debug=[FLAGS]          set debug level (no FLAGS implies `aeq')\n\
  -t, --trace=NAME             trace NAME when it will be defined\n\
  -l, --arglength=NUM          restrict macro tracing size\n\
  -o, --error-output=FILE      redirect debug and trace output\n", 89},
  {"\
\n\
FLAGS is any of:\n\
  t   trace for all macro calls, not only traceon'ed\n\
  a   show actual arguments\n\
  e   show expansion\n\
  q   quote values as necessary, with a or e flag\n\
  c   show before collect, after collect and after call\n\
  x   add a unique macro call id, useful with c flag\n\
  f   say current input file name\n\
  l   say current input line number\n\
  p   show results of path searches\n\
  i   show changes in input files\n\
  V   shorthand for all of the above flags\n", 90},
  {"\
\n\
If no FILE or if FILE is `-', standard input is read.\n", 91},
  {"\
\n\
Report bugs to <bug-m4@gnu.org>.\n", 92},
  {"Bad debug flags: `%s'", 93},
  {"ERROR: failed to add search directory `%s'", 94},
  {"ERROR: failed to add search directory `%s': %s", 95},
  {" (options:", 96},
  {"INTERNAL ERROR: Bad code in deferred arguments", 97},
  {"INTERNAL ERROR: Bad token type in expand_token ()", 98},
  {"ERROR: EOF in argument list", 99},
  {"INTERNAL ERROR: Bad token type in expand_argument ()", 100},
  {"INTERNAL ERROR: Bad symbol type in call_macro ()", 101},
  {"ERROR: Recursion limit of %d exceeded, use -L<N> to change it", 102},
  {"ERROR: failed to initialise modules: %s", 103},
  {"ERROR: cannot find module: `%s'", 104},
  {"ERROR: cannot find module: `%s': %s", 105},
  {"ERROR: cannot close modules", 106},
  {"ERROR: cannot cannot close modules: %s", 107},
  {"ERROR: cannot close module: `%s'", 108},
  {"ERROR: cannot cannot close module: `%s': %s", 109},
  {"ERROR: Cannot create temporary file for diversion", 110},
  {"ERROR: Cannot flush diversion to temporary file", 111},
  {"ERROR: Copying inserted file", 112},
  {"ERROR: Reading inserted file", 113},
  {"Cannot stat diversion", 114},
  {"Diversion too large", 115},
  {"Path search for `%s' found `%s'", 116},
  {"VMEM limit exceeded?\n", 117},
  {"\
Memory bounds violation detected (SIGSEGV).  Either a stack overflow\n\
occurred, or there is a bug in ", 118},
  {".  Check for possible infinite recursion.\n", 119},
  {"INTERNAL ERROR: Illegal mode to symbol_lookup ()", 120},
  {"Name `%s' is unknown\n", 121},
};

int _msg_tbl_length = 121;
