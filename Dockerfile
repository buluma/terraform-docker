FROM hashicorp/terraform:1.1.9

LABEL maintainer="Michael Buluma <bulumaknight@gmail.com>"
LABEL build_date="2022-09-02"

ENV container=docker

# Add runtime requirements
RUN apk add python3 py3-pip

# Add az-cli
RUN apk add \
      python3-dev \
      libffi-dev \
      openssl-dev \
      build-base \
      --virtual build-dependencies && \
    pip install --upgrade pip && \
    pip install azure-cli && \
    apk del build-dependencies
