FROM node:alpine
RUN yarn global add vuepress

VOLUME [ "/vuepress" ]

WORKDIR /vuepress

RUN yarn global add vuepress

EXPOSE 8080

ENTRYPOINT [ "vuepress" ]
