FROM debian:stable-slim

RUN apt-get -y update && \
    apt-get install -y ledger2beancount &&  \
    rm -rf /var/lib/apt/lists/*

WORKDIR /finance

ENTRYPOINT ["ledger2beancount"]