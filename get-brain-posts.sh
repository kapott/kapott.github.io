#!/usr/bin/env bash

# Vars this script needs in order to function:
#SRC_DIR="$HOME/Documents/Brain/Blog/posts"
#DEST_DIR="$PWD/content/posts"

source .env
rm -rf content/posts/*
rsync -avh $SRC_DIR/* $DEST_DIR/ --delete
rsync -avh $SRC_DIR/../images/* static/images/ --delete
# ./transform-links.sh
# python3 transform-links.py $DEST_DIR
#rsync -avh $SRC_DIR/images/* $PWD/static/images/