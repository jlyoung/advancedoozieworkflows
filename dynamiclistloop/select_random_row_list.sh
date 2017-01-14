#!/usr/bin/env bash
csv_file=$1
if [[ -n "$csv_file" ]]; then
    line_count=$(wc -l "$csv_file")
    random_number=$((($RANDOM % 10) + 1))
    loop_list=$(awk 'NR == n' n=$random_number "$csv_file")
    echo "loop_list=$loop_list"
else
    echo "argument error"
    exit 1
fi
