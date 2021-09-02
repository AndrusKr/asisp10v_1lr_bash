#!/bin/bash
# ./4script.sh 1arg 2arg 3arg
#4.Написать скрипт, выводящий на консоль и в файл все аргументы командной строки.
echo "This is script $0!"
echo "The number of the arguments passed to the script: $#"
echo "The arguments list: $@"
echo "$@" > file # в файл file будут записаны аргументы через пробел
