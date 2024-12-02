#!/usr/bin/env bash

# Vars this script needs in order to function:
#SRC_DIR="$HOME/Documents/Brain/Blog"
#DEST_DIR="$PWD/content/posts"

source .env
rm -rf content/posts/*
rsync -avh $SRC_DIR/posts/* $DEST_DIR/ --delete
rsync -avh $SRC_DIR/images/* static/images/ --delete