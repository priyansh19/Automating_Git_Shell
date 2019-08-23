#!/bin/bash

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

echo '1. Commit on master branch \n 2. Enter a new branch name to commit on'
read branch
if [$branch == "master"]
then
  git push origin $branch
else
  git checkout -b $branch
  git push -u origin $branch
  git checkout -b master
fi
