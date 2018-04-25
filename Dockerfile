FROM jekyll/builder:latest

LABEL release_notes="this is a test release"
LABEL maintainer="camellzone@gmail.com"

EXPOSE 4000/tcp

RUN yarn install
VOLUME ["/srv/jekyll"]
ENTRYPOINT ["jekyll" ,"serve", "--incremental"]