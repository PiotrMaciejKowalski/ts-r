#! /bin/bash

git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d
