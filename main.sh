#!/usr/bin/env bash
# source code generated using shource: https://github.com/oliverisaac/shource
# vim: autoindent tabstop=4 shiftwidth=4 expandtab softtabstop=4 ft=sh

set -e # Exit on any error. Use `COMMAND || true` to nullify
set -E # Functions inherit error trap
set -u # Error on unset variables. Use ${var:-alternate value} to bypass
set -f # Error on failed file globs (e.g. *.txt )
set -o pipefail # Failed commands in pipes cause the whole pipe to fail

export IFS=$'\n\t ,.';

while read line; do
    for word in $line; do
        ((${#word} > 2)) && echo "${word:0:1}$(( ${#word} - 2 ))${word: -1}" || echo ${word}
    done
done | tr '\n' ' '
