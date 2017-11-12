FROM malice/alpine

LABEL maintainer "https://github.com/blacktop"

LABEL malice.plugin.repository = "https://github.com/malice-plugins/javascript.git"
LABEL malice.plugin.category="javascript"
LABEL malice.plugin.mime="application/javascript"
LABEL malice.plugin.docker.engine="*"

COPY . /go/src/github.com/maliceio/malice-javascript
RUN apk --update add --no-cache python py-setuptools
RUN apk --update add --no-cache -t .build-deps \
                                    python-dev \
                                    build-base \
                                    mercurial \
                                    musl-dev \
                                    openssl \
                                    py-pip \
                                    bash \
                                    wget \
                                    git \
                                    gcc \
                                    go \
  && echo "Install Javascript Tools..." \
  && echo "Building scan Go binary..." \
  && cd /go/src/github.com/maliceio/malice-javascript \
  && export GOPATH=/go \
  && go version \
  && go get -v \
  && go build -ldflags "-X main.Version=$(cat VERSION) -X main.BuildTime=$(date -u +%Y%m%d)" -o /bin/scan \
  && rm -rf /go /usr/local/go /usr/lib/go /tmp/* \
  && apk del --purge .build-deps

WORKDIR /malware

ENTRYPOINT ["su-exec","malice","/sbin/tini","--","scan"]
CMD ["--help"]
