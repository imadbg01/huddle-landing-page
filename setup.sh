#!/usr/bin/env bash

mkdir -p assets/css
touch assets/css/style.css
wget -bO ./assets/css/reset.css "https://raw.githubusercontent.com/imadbg01/dotfiles/main/css/reset.css" 
echo "wget-log" >> .gitignore
mv design  ./assets
mv images ./assets
mv style-guide.md ./assets/design
mv README-template.md README.md
git init --initial-branch=main
git add assets index.html README.md .gitignore
git commit -m "initial setup"
git checkout -b dev