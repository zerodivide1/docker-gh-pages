####
# A docker image for running the Github-pages stuff `locally`.
#
FROM ontouchstart/rpi-ruby:latest
MAINTAINER Sean Payne <seantpayne@gmail.com>

RUN apt-get update
RUN apt-get install -y --no-install-recommends libssl-dev
RUN apt-get install -y --no-install-recommends nodejs
RUN apt-get install -y --no-install-recommends python-pygments
RUN apt-get clean \
	&& rm -rf /var/lib/apt/lists/ \
	&& gem install --no-ri --no-rdoc github-pages

VOLUME /app
WORKDIR /app
EXPOSE 4000

ENTRYPOINT ["jekyll", "serve", "--watch", "--drafts", "--baseurl", ""]
