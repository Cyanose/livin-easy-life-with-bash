#!/bin/sh
fc -ln -1 | sed 's/^\s*//' | tr -d '\n' | xsel -b
