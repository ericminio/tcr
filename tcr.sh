#!/bin/bash

function test() {
    npm test
}
function commit() {
    git add .
    git commit -m tcr
    git log --reverse -n 1
}
function revert() {
    git reset --hard
}

cd $TCR_REPO

test && commit || revert