#!/bin/sh

ENV_DIR=${3:-}
build_dir=${1:-}
folder="$(cat $ENV_DIR/NPMRC_FOLDER)"
npmrc="$(cat $ENV_DIR/NPMRC)"

if [ "$npmrc" != "" ]; then
    if [ "$folder" != ""]; then
        echo "-----> Using .npmrc from config var NPMRC_FOLDER"
        cd "$build_dir/$folder"
    fi
	echo "-----> Using .npmrc from config var NPMRC"
	echo "$npmrc" > ".npmrc"
	exit 0
fi