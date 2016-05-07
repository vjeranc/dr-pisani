#!/usr/bin/env bash
#
# renames the chapter files with proper numbers given their order

awk 'BEGIN{i=1}
     /\\input\{[[:digit:]]/ {
     s=gensub(/\\input\{([[:digit:]]{2})(.+)\}/, "\\1 \\2", "g", $0)
     a[s] = i++;
     }
     END {
       for (f in a) {
         split(f, k, " ")
         system("git mv " k[1]k[2] " " sprintf("%02d%s", a[f], k[2]))
       }
     }' "${1:-/dev/stdin}"
