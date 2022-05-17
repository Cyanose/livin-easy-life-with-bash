#!/bin/sh
for file in $(find . -name "*$1" 2>/dev/null); do mv -i $file ${file%%${1}}$2; done
