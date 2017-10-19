FROM nginx

# Ruby
RUN apt-get -y update
RUN apt-get -y install ruby ruby-dev make gcc nodejs

# Jekyll
RUN gem install jekyll bundler octopress-autoprefixer

# Environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
