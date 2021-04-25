#!/bin/sh
# https://gohugo.io/tutorials/github-pages-blog/

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git remote set-branches --add origin gh-pages
git fetch
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo --theme=docsy \
     --environment production

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"
git remote set-url origin "https://${GH_TOKEN}@github.com/statcan/cloud-native-platform.git"
git push origin gh-pages
