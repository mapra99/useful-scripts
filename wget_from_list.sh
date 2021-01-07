#!/bin/bash
# Takes a text file with a list of urls and calls wget on those to download the files on the current directory
# Usage: wget_from_list <file_path>
# Additional flags and arguments will be passed directly to wget
# The output files will be saved in the pwd. Add -O <dest_file_path>

for FILE_PATH in $(cat $1)
do
  wget ${FILE_PATH} "$@"
done
echo "done :)"
