#!/bin/bash

#set -x

JEKYLL=`which jekyll` || exit 0;

NOW=$(date +"%m-%d-%Y")

echo "Generating pages."

$JEKYLL --no-server --no-auto

git add .

git commit -m "committing $now"

# Edit references
git update-ref refs/heads/master $(echo 'publishing changes to the blog.' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master))

git checkout master

git push

echo "All done. Putting you back in dev."

git checkout dev
