FROM node:alpine AS packages

WORKDIR /

RUN apk add --no-cache git

RUN yarn add vuepress vuepress-plugin-fulltext-search

FROM node:alpine

VOLUME [ "/vuepress" ]

WORKDIR /vuepress

EXPOSE 8080

COPY --from=packages /node_modules /node_modules

ENTRYPOINT [ "/node_modules/.bin/vuepress" ]
