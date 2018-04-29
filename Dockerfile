FROM jekyll/builder:latest

ARG REPOTOPUBLISH=Howtos
LABEL release_notes="this is a test release"
LABEL maintainer="camellzone@gmail.com"

EXPOSE 4000/tcp

RUN  yarn install

ADD ~.ssh/* /root/.ssh

VOLUME ["/srv/jekyll"]
ENTRYPOINT cd /srv/jekyll/$REPOTOPUBLISH && pwd && git pull && cd .. && jekyll serve --incremental