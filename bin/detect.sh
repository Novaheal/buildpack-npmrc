#!/bin/sh

if [-f $1/package.json ]; then
    echo "buildpack-npmrc"
    exit 0
else
    exit 1
fi