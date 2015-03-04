#!/bin/bash

set -x

JEKYLL=`which jekyll` || exit 0;

NOW=$(date +"%m-%d-%Y")

echo "Generating pages."

$JEKYLL --no-server --auto > /dev/null &
 
sleep 5;

pgrep -f jekyll;

pkill -f jekyll;

git add .
git commit -a -m "committing $now"

# Edit references
git update-ref refs/heads/master $(echo 'publishing changes to the blog.' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master))

git checkout master

git push

rm -rf _site
echo "All done. Putting you back in dev."

git checkout dev
