FROM golang

MAINTAINER [YOUR_NAME_HERE]

RUN  mkdir -p /go/src \
  && mkdir -p /go/bin \
  && mkdir -p /go/pkg
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:$PATH

RUN mkdir -p $GOPATH/src/github.com/[YOUR_NAME]/[PROJECT_NAME]/
WORKDIR $GOPATH/src/github.com/[YOUR_NAME]/[PROJECT_NAME]/
COPY . $GOPATH/src/github.com/[YOUR_NAME]/[PROJECT_NAME]/

RUN go install github.com/[YOUR_NAME]/[PROJECT_NAME]/
RUN go build
RUN	go get github.com/pilu/fresh

CMD ["fresh"]

# EXPOSE [PORT_NUMBER]