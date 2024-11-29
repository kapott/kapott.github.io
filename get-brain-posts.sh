#!/usr/bin/env bash

# Vars this script needs in order to function:
#SRC_DIR="$HOME/Documents/Brain/Blog/posts"
#DEST_DIR="$PWD/content/posts"

source .env
rsync -avh $SRC_DIR/*.md $DEST_DIR/ --delete
rsync -avh $SRC_DIR/images/* $PWD/static/images/