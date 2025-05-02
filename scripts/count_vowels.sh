#!/usr/bin/env bash

# 정확한 파일 경로 지정 (현재 디렉토리 기준 상대경로 사용)
FILE="scripts/sample.txt"

if [ ! -f "$FILE" ]; then
  echo "Error: $FILE not found!"
  exit 1
fi

# 대소문자 구분 없이 모음(aeiouAEIOU) 개수 세기
count=$(tr -cd 'aeiouAEIOU' < "$FILE" | wc -c)

echo "Total vowels: $count"
