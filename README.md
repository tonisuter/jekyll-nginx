# jekyll-nginx
This is a docker image that installs Ruby + Jekyll on top of the official Nginx docker image ([https://hub.docker.com/_/nginx/](https://hub.docker.com/_/nginx/)).

## Building this docker image
```docker build --no-cache -t jekyll-nginx .```

## Using this image
To use this image, create a new Dockerfile that is based on this one and place it
in the root folder of your Jekyll site:

```
FROM tonisuter/jekyll-nginx

ADD . /tmp/jekyll-site
WORKDIR /tmp/jekyll-site
RUN jekyll build
RUN cp -r /tmp/jekyll-site/_site/* /usr/share/nginx/html
```
