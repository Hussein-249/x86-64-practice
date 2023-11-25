#!/bin/bash

nasm -f elf64 index.asm

ld -o index index.o

./index

echo  -e "\nProgram exited with following exit code: " $?