#!/bin/sh

white="\e[1;37m"
cyan="\e[1;36m"
blue="\e[1;34m"

sloc=$(cat * | sed -r '/^\s*$/d' | wc -l)
methods_num=$(cat * | grep --color=auto -E -e "public.*\(*\)" -e "private.*\(*\)" -e "protected.*\(*\)" -e "default.*\(*\)" | wc -l)

print_methods() {
cat * | grep --color=auto -E -e "public.*\(*\)" -e "private.*\(*\)" -e "protected.*\(*\)" -e "default.*\(*\)"
}
print_methods
echo "-----------------------------------"
echo -e "    number of methods: ${blue}$methods_num"
echo -e "    ${white}sloc: ${blue}$sloc"
