FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install \
    curl \
    zip \
    unzip \
    git \
    jq \
    postgresql-client
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

