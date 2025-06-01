#!/bin/bash
err="ERROR"
echo "Введите путь: "
read path
if [[ -z "$path" ]]; then
  echo "Пустое значение"
  exit 1
fi
if [[ ! -d "$path" ]]; then
  echo "Директории не существует"
  exit 1
else
count=$(grep -rw "$err" "$path" | wc -w)
echo "$count" > error_count.txt
echo "Время выполнения скрипта:"
time { :; }
