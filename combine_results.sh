#!/usr/bin/zsh

(set +x
# Combine WHIZARD results from two files
 paste -d " " <(tail -n +4 ${1} | head -n -4 | cut -d " " -f 4,6) <(tail -n +4 ${2} | head -n -4 | cut -d " " -f 6)
)
