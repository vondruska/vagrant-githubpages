RUBY_VERSION="2.2-dev"

sudo apt-get -y update
sudo apt-get -y install git nodejs
# Install ruby environment
if ! type rvm >/dev/null 2>&1; then
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L https://get.rvm.io | bash -s stable
  source /etc/profile.d/rvm.sh
fi

if ! rvm list rubies ruby | grep ruby-${RUBY_VERSION}; then
  rvm install ${RUBY_VERSION}
fi

rvm --default use ${RUBY_VERSION}

gem install github-pages --no-ri --no-rdoc