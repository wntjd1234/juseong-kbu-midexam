#!/usr/bin/env bash

# 인자가 없는 경우 처리
if [ $# -eq 0 ]; then
  echo "No numbers provided"
  exit 1
fi

# 합계 계산
sum=0
for num in "$@"; do
  sum=$((sum + num))
done

echo "$sum"
