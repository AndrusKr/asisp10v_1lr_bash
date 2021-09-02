#!/usr/bin/env bash
#USAGE: ./8script.sh source_file exe_file_name
# ./8script.sh main.c out
# ./8script.sh error_main.c out
# 8.Написать скрипт, компилирующий и запускающий программу (имя исходного файла и exe- файла результата задаётся пользователем в качестве аргументов командной строки). В случае ошибок при компиляции вывести на консоль сообщение об ошибках и не запускать программу на выполнение.
# первый аргумент ($1) - имя файла результата
SOURCE="$1"
EXEFILE="$2"

if gcc -o "$EXEFILE" "$SOURCE"; then
    ./"$EXEFILE"
else
    echo "Compilation finish with error(s)"
    exit 1
fi
