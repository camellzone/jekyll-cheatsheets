FROM jekyll/builder:latest

ARG REPOTOPUBLISH=Howtos
LABEL release_notes="this is a test release"
LABEL maintainer="camellzone@gmail.com"

EXPOSE 4000/tcp

RUN cd $REPOTOPUBLISH && git pull && yarn install
VOLUME ["/srv/jekyll"]
ENTRYPOINT ["jekyll" ,"serve", "--incremental"]