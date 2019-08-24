#!/bin/bash

echo '====================== Initialising Repo ========================='
echo '1. press 1 to initalise a local repo '
echo '2. press 2 to clone a repository '
read xterm
if [ $xterm -eq 1 ]
then
  echo 'Enter the name of local repo you want initialise :'
  read name
  cd ~
  mkdir Desktop/Github/$name
  cd Desktop/Github/$name
  git init
  echo "Enter the link to the remote repo :"
  read link
  git remote add -m origin master "$link"

elif [ $xterm -eq 2 ]
then
  echo 'Enter the link of remote github repo:'
  read link2
  cd ~
  cd Desktop/Github
  git clone "$link2"

else
  echo "You chose a wrong option.."
fi
