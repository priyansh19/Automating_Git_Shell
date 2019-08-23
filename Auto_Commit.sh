#!/bin/bash

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

echo '1. Press 1 to commit on master branch'
echo '2. press 2 to commit on an existing branch [other than master]'
echo '3. press 3 to enter a new branch name and commit in it'

read x
if [[ $x -eq 1]]
then
  git push origin master

elif [[ $x -eq 2 ]]
then
echo "Enter the name of an existing branch"
read exist
  git checkout $exist
  git push -u origin $exist
  git checkout master

elif [[ $x -eq 3 ]]
then
echo "Enter the name of a new branch"
read new
  git checkout -b $new
  git push -u origin $new
  git checkout master

else
 echo "You chose a wrong option.."
fi
