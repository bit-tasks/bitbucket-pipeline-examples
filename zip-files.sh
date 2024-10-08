#!/bin/bash

# Ensure the downloads directory exists
mkdir -p downloads

# Store the current directory
current_dir=$(pwd)

# Change directory to bitbucket-pipelines
cd bitbucket-pipelines

# Create or overwrite the automating-component-releases.zip
zip -r "$current_dir/downloads/automating-component-releases.zip" \
      bit-init \
      commit-bitmap \
      pull-request \
      lane-cleanup \
      tag-export \
      verify

# Zip other individual directories
zip -r "$current_dir/downloads/branch-lane.zip" \
      branch-lane \
      lane-branch

zip -r "$current_dir/downloads/dependency-update.zip" dependency-update

# Go back to the original directory
cd "$current_dir"
