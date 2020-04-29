FROM node:alpine AS packages

WORKDIR /

RUN apk add --no-cache git

RUN yarn add vuepress vuepress-plugin-flexsearch

FROM node:alpine

VOLUME [ "/vuepress" ]

WORKDIR /vuepress

EXPOSE 8080

COPY --from=packages /node_modules /vuepress/

ENTRYPOINT [ "/vuepress/node_modules/.bin/vuepress" ]
