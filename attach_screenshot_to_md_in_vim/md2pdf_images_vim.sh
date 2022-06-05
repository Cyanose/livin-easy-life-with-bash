#!/bin/sh
name_of_file=$(echo $1 | awk -F "/" '{print $NF}')
echo $file_location


# if the file that is being compiled is in the current working dir
if  [ "$file_location" = "" ]; 
then
# then we  are running the command from the current dir where  the file is 
md2pdf $1 && 
# then we  are cleaning after compilation in the current dir
rm -rf .resources

else
file_location=$(echo $1 | sed "s|$name_of_file||")

md2pdf $1 && 
#else we  are cleaning the dir pulled from an argument
rm -rf ${file_location}/.resources

fi
