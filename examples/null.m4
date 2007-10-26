# This file tests m4 behavior on NUL bytes
dnl Raw pass-through:
raw: - -
dnl Embedded in quotes:
quoted: `- -'
dnl Embedded in comments:
commented: #- -
dnl Passed through $1, $*, $@:
define(`echo', `.$1.$*.$@.')define(`', `empty')dnl
user: echo(- -,`1 1')
dnl All macros matching __*__ take no arguments, and never produce NUL
dnl First argument of builtin: not tested yet. No builtin includes NUL, so
dnl   this needs to warn, but warning output needs quoting.
dnl Remaining arguments of builtin:
`builtin:' builtin(`len', - -)
dnl changecom: not tested yet
dnl changequote: not tested yet
dnl changeword: not tested yet
dnl debugfile: not tested yet. No file name includes NUL, needs to warn
dnl debugmode: not tested yet. NUL not a valid mode, needs to warn
dnl decr: not tested yet. NUL not a number, needs to warn
dnl Macro name of define:
define(`- -', `odd name: $1')dnl
dnl Definition of define: not tested yet
dnl Macro name in defn:
`defn:' defn(`- -')
dnl Macro contents in defn: not tested yet
dnl divert: not tested yet. NUL not a number, needs to warn
dnl divnum: Takes no arguments, and never produces NUL.
dnl Discarded by dnl: - -
dnl dumpdef: not tested yet. Needs to quote properly.
dnl Passed through errprint:
errprint(`errprint:' - -, `- -
')dnl
dnl Passed to esyscmd: not tested yet. NUL truncates string, needs to warn
dnl Generated from esyscmd:
`esyscmd:' esyscmd(`printf "[\\0]"')
dnl eval: not tested yet. NUL not a number, needs to warn
dnl format: not tested yet. Should %s string truncation warn?
dnl Macro name in ifdef, passed through ifdef:
`ifdef:' ifdef(`- -', `yes: - -', `oops: - -')dnl
 ifdef( , `oops: - -', `no: - -')
dnl Compared in ifelse, passed through ifelse:
`ifelse:' ifelse(`-', `- -', `oops', `- -', - -, `yes: - -')
dnl include: not tested yet. No file name includes NUL, needs to warn
dnl incr: not tested yet. NUL not a number, needs to warn
dnl Passed through index:
`index:' index(`a b', `b') index(`-', ` ') index(` ', `-')dnl
 index(`                -', `        -')
dnl Defined first argument of indir:
`indir:' indir(`- -', 1 1)dnl
dnl Undefined first argument of indir: not tested yet. Needs to warn
dnl Other arguments of indir:
 indir(`len', `- -')
dnl Passed through len:
`len:' len( ) len(- -)
dnl m4exit: not tested yet. NUL not a number, needs to warn.
dnl Passed through m4wrap: not working yet
m4wrap(``m4wrap:' -
 -
')dnl
dnl maketemp: not tested yet. No file name includes NUL, needs to warn
dnl mkstemp: not tested yet. No file name includes NUL, needs to warn
dnl patsubst: not tested yet
dnl Defined argument of popdef:
`popdef:' popdef(`- -')ifdef(`- -', `oops', `ok')
dnl Undefined argument of popdef: not tested yet. Should it warn?
dnl Macro name of pushdef:
`pushdef:' pushdef(`- -', `strange: $1')ifdef(`- -', `ok', `oops')
dnl Definition of pushdef: not tested yet
dnl regexp: not tested yet
dnl Passed through shift:
`shift:' shift(`hi', `- -', - -)
dnl sinclude: not tested yet. No file name includes NUL, needs to warn
dnl First argument of substr:
`substr:' substr(`-- --', `1', `3')
dnl Other arguments of substr: not tested yet. NUL not a number, needs to warn.
dnl syscmd: not tested yet. NUL truncates string, needs to warn
dnl sysval: Takes no arguments, and never produces NUL.
dnl Passed to traceoff:
traceoff(`- -', ` ')dnl
dnl traceon: not tested yet. Trace output needs quoting
`traceon:' indir(`- -', `- -')
dnl translit: not tested yet
dnl Defined argument of undefine:
`undefine:' undefine(`- -')ifdef(`- -', `oops', `ok')
dnl Undefined argument of undefine: not tested yet. Should it warn?
dnl undivert: not tested yet. No file name or number includes NUL, needs to warn
