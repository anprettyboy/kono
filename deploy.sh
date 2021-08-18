#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f https://github.com:anprettyboy/anprettyboy.github.io.git main
# git push -f https://github.com/Moking1997/Moking1997.github.io.git master
# if you are deploying to https://<USERNAME>.github.io/<REPO>
# https://anprettyboy.github.io/rangnixiao/
git push -f git@github.com:anprettyboy/rangnixiao.git master:gh-pages

cd -