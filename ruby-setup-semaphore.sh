#! /usr/bin/env bash

bundler_version=$(cat Gemfile.lock | grep -A1 "BUNDLED WITH" | grep -oE "[0-9]+\.[0-9]+\.[0-9]+")
ruby_version=$(head -n 3 Gemfile | grep -o '[0-9]\.[0-9]\.[0-9]')
cd ~/.rbenv/plugins/ruby-build && git pull && cd $SEMAPHORE_PROJECT_DIR
rbenv install $ruby_version -s
rbenv local $ruby_version
gem install bundler -v $bundler_version --no-ri --no-rdoc

echo "Using ruby $(ruby --version)"
echo "Using gem $(gem --version)"
echo "Using bundler $(bundler --version)"
