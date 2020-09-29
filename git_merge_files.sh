#!/bin/bash
# Merges a given branch, bringing all the changes of only a given set of file paths
# This set of file paths can be written on a text file nad pass it as an argument to this script
# Usage: git_merge_files <branch_name> <file>


git merge --no-ff --no-commit $1
for FILE_PATH in $(cat $2)
do
  git add ${FILE_PATH}
done
git checkout -- .
echo "done :)"

