from ruby:2.4.2
run apt-get update -y
run apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev nodejs
run gem install rails
run mkdir /webapp
add . /webapp
workdir /webapp
run bundle install
