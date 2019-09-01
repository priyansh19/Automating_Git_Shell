#!/bin/bash

# Show all updated or untracked files
git status

# Ask user which file or all files he/she want to track/stage
read -p "Enter filename to stage or enter . to stage all files: " inp
git add "$inp"

# Config username and email
read -p "Enter your GitHub Username: " user1
git config --global user.name "$user1"
read -p "Enter your GitHub Email: " email1
git config --global user.email "$email1"

echo 'Enter the commit message:'
read commitMessage
git commit -m "$commitMessage"
echo '\n'

echo ' ============================== Git - Auto Commit =============================='
echo '1. press 0 to list all git branches of the repo.'
echo '2. Press 1 to commit on master branch'
echo '3. press 2 to commit on an existing branch [other than master]'
echo '4. press 3 to enter a new branch name and commit in it'

read xterm
if [ $xterm -eq '0' ]
then
  git branch
elif [ $xterm -eq '1' ]
then
  git push origin master
elif [ $xterm -eq '2' ]
then
  echo "Enter the name of an existing branch"
  read exist
  git checkout $exist
  git push -u origin $exist
  git checkout master
elif [ $xterm -eq '3' ]
then
  echo "Enter the name of a new branch"
  read new
  git checkout -b $new
  git push -u origin $new
  git checkout master
else
  echo "You chose a wrong option.."
fi
