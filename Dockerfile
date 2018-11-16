FROM node:8-alpine
ENV GREN_VERSION 0.17.0
RUN apk add --update git && \
    rm -rf /tmp/* /var/cache/apk/* && \
    npm install github-release-notes@$GREN_VERSION -g
    
ENV SRC_PATH /usr/local/src/myapp
RUN mkdir -p $SRC_PATH

VOLUME [ "$SRC_PATH" ]
WORKDIR $SRC_PATH

CMD ["--help"]
ENTRYPOINT ["gren"]
