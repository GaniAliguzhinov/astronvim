#! /usr/bin/env bash

if [ "$(git remote -v | grep template | grep AstroNvim | grep '(push)' | wc -l)" -eq "1" ]; then 
  echo "Remote already added";
else 
  echo "Adding remote";
  git remote add template https://github.com/AstroNvim/template
fi
git fetch --all
git merge template/main --allow-unrelated-histories
