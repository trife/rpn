#!/bin/sh
# make new dev branch
#git checkout -b merge-branch

# merge all undergrad branches into the local dev branch
#git pull origin trevor madison emma allyson joseph

# loop through all files in target directory: entries

for file in entries/*; do
    echo $file
	echo git log --pretty="format:%an" -- $file
done


# use git log on each PDF file to look for 2 unique users with commits



# copy the PDF to another folder if needed


# commit and merge local dev branch to master