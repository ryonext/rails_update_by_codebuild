#!/bin/sh

git clone git@github.com:ryonext/rails_update_by_codebuild.git
cp Gemfile.lock ./rails_update_by_codebuild/Gemfile.lock
cd ./rails_update_by_codebuild
git checkout -b bundle_update_`date "+%s"`
git add Gemfile.lock
git commit -m "Today's bundle update"
git push
# create PR
