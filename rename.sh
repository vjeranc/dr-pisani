#!/usr/bin/env bash
#
# renames the chapter files with proper numbers given their order

awk 'BEGIN{i=1}
     /\\input\{[[:digit:]]{2}/ {
       s=gensub(/\\input\{([[:digit:]]{2})(.+)\}/, "\\1 \\2", "g", $0)
       split(s, k, " ")
       old_name=k[1]k[2]
       new_name=sprintf("%02d%s", i++, k[2])
       a[old_name]=new_name
       split($0, line, old_name)
       print line[1] new_name line[2]
     }
     ! /\\input\{[[:digit:]]{2}/ {
       print
     }
     END {
       for (old_name in a) {
         new_name=a[old_name]
         if (old_name != new_name) system("git mv " old_name " " new_name)
       }
     }' "${1:-/dev/stdin}"
