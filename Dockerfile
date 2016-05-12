FROM nginx

# Ruby
RUN apt-get -y update
RUN apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev curl nodejs
WORKDIR /tmp
RUN curl -O http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.5.tar.gz
RUN tar -xvzf ruby-2.1.5.tar.gz
WORKDIR ruby-2.1.5/
RUN ./configure --prefix=/usr/local
RUN make
RUN make install

# Jekyll
RUN gem install jekyll
RUN gem install octopress-autoprefixer

# Environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
