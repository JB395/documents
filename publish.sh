# from: http://sangsoonam.github.io/2016/08/02/publish-gitbook-to-your-github-pages.html
# install the plugins and build the static site

# checkout to the gh-pages branch
git checkout gh-pages

# pull the latest updates
git fetch origin gh-pages
git reset origin/gh-pages --hard

# copy the static site files into the current directory.
cp -R _book/* .

# add all files
git add en zh

# commit
git commit -a -m "Update docs"

# push to the origin
git push origin gh-pages

# checkout to the master branch
git checkout master
