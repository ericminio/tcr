#!/bin/bash

source ./dir.sh
DIR=$(current_dir ${BASH_SOURCE[0]})

cd $TCR_REPO
clean=$(git status | grep "nothing to commit, working tree clean" | wc -l)

if [ $clean = 0 ]; then
    cd $DIR
    ./tcr.sh
else
    echo "clean"
fi