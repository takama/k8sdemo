FROM golang:1.7-alpine

ENV WEBAPP_SERVICE_PORT 3000
ENV WEBDB_SERVICE_HOST 172.17.0.1
ENV WEBDB_SERVICE_PORT 3306
ENV WEBDB_SERVICE_NAME webdemo
ENV WEBDB_SERVICE_USERNAME webdemo
ENV WEBDB_SERVICE_PASSWORD webdemo!

RUN mkdir -p /go/src/webapp
WORKDIR /go/src/webapp

COPY src/ /go/src/webapp

# Use this command for golang:1.X-alpine image version
RUN apk add --no-cache --virtual .build-deps \
    git \
    && go get -v -d \
    && apk del .build-deps

# Use this command for image versions except golang:1.X-alpine
# RUN go-wrapper download

RUN go-wrapper install

EXPOSE $WEBAPP_SERVICE_PORT

CMD ["go-wrapper", "run"]
