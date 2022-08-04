#!/bin/bash

count=$(git log --oneline | grep tcr | wc -l | cut -d" " -f8)
git reset --soft HEAD~"$count"
git status
