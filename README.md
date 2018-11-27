# semaphore-ruby
A simple ruby script that helps change the ruby version on semaphore ci

# install
* Add the following blocks to the project setup on Semaphore:
```
ruby_version=$(head -n 3 Gemfile | grep -o '[0-9]\.[0-9]\.[0-9]')
wget https://raw.githubusercontent.com/zipnosis/semaphore-ruby/master/ruby-setup-semaphore.sh && bash ruby-setup-semaphore.sh $ruby_version
```
