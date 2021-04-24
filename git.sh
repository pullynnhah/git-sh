#!/bin/zsh

echo "Adding files to git...\n"
git add .

echo "Files ready to be committed:"
git diff --cached --name-only

echo "\nWhat's the commit message:"
read MESSAGE
git commit -m $MESSAGE
echo "\nCommitted files with the message: $MESSAGE"
git push origin master
echo "\nPushed changes to GITHUB"
