FROM golang:1.7

ENV WEBAPP_PORT 3000
ENV WEBAPP_DB_HOST 0.0.0.0
ENV WEBAPP_DB_PORT 3306
ENV WEBAPP_DB_NAME webdemo
ENV WEBAPP_DB_USERNAME webdemo
ENV WEBAPP_DB_PASSWORD webdemo!

RUN mkdir -p /go/src/webapp
WORKDIR /go/src/webapp

COPY src/ /go/src/webapp

# Use this command for golang:1.X-alpine image version
# RUN apk add --no-cache --virtual .build-deps \
#	 git \
#    && go get -u github.com/go-sql-driver/mysql \
#	 && apk del .build-deps

RUN go-wrapper download
RUN go-wrapper install

EXPOSE $WEBAPP_PORT

CMD ["go-wrapper", "run"]
