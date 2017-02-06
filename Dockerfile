FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.1.1

RUN gem install dagnabit --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dagnabit-test"]
CMD ["--help"]
