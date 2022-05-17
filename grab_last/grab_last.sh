#!/bin/sh
ls . -s new | head -2 | sed "1d" | awk "{print $2}"
