#!/bin/bash

git update-ref refs/heads/master $(echo 'publishing changes to the blog.' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master))
