#!/bin/sh

# make new branch for merging
git checkout -b merge-branch

# merge all undergrad branches into the local dev branch
git pull origin trevor madison emma allyson joseph

# loop through all files in target directory: entries, move files if num commits=2
for file in ~/rpn/active/exp-srpn/entries/**/*; do
	filename=$(basename -- "$file")
	extension="${filename##*.}"
	if [ "$extension" = "csv" ]; then
		# use git log on each file to look for 2 unique users with commits
		commits=$(git shortlog -s -n  -- $file | awk 'END { print NR }')
		if [ "$commits" = "2" ]; then
			# recursively move containing directory to /rpn/done/exp-srpn/entries/**/*
			
		fi
	fi
done