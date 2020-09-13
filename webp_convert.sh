#!/bin/bash
# Converts to webp format all the images found in a specific directory
# Uses cwebp to convert the images
# Usage: webp_convert <dir_path>
# The output images will be saved in the same directory specified by <dir_path>

for FILE in $1*
do
  if [[ $FILE =~ \.(jpg|jpeg|svg|gif|png)$ ]]
  then
    FILE_WITH_NO_EXT=$(echo "$FILE" | cut -f 1 -d '.')
    cwebp "${@:2}" "$FILE" -o "$FILE_WITH_NO_EXT.webp"
  fi
  # cwebp ${FILE_PATH} -o ${FILE_PATH}.webp
done
echo "done :)"
