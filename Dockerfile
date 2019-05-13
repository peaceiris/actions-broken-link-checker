FROM node:10.15.3-alpine

LABEL "com.github.actions.name"="Broken link checker"
LABEL "com.github.actions.description"="Find broken links, missing images, etc in your HTML"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/peaceiris/actions-broken-link-checker"
LABEL "homepage"="https://github.com/peaceiris/actions-broken-link-checker"
LABEL "maintainer"="peaceiris"

ENV PKG_VERSION='0.7.8'

RUN npm update -g npm && \
    npm install -g "broken-link-checker@${PKG_VERSION}"

ENTRYPOINT ["/usr/local/bin/broken-link-checker"]
