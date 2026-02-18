#!/bin/bash

PAGE_ROOT=${1:-"/"}
IS_PUBLISH_DEPLOYMENT=${2:-false}

PAGE_ROOT=$(echo "$PAGE_ROOT" | sed 's:/*$::')

if [ "$IS_PUBLISH_DEPLOYMENT" = true ]; then
    echo "Using publish deployment strategy"
    # Remove the baner which identifies the book as a draft
    if ! command -v yq &>/dev/null; then
        echo "yq could not be found, the draft banner cannot be removed"
        echo "Please install yq (with APT or via https://github.com/mikefarah/yq#install) and try again"
    else
        cp _config.yml _config.yml.bak
        yq -i '.is_draft = false' _config.yml
    fi
else
    echo "Using draft deployment strategy"
fi

echo "Publishing to  page root: \"$PAGE_ROOT\""
bundle exec jekyll build -d public -b "$PAGE_ROOT"
