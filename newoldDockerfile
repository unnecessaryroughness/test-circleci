FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y nodejs npm git git-core

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && nodejs ./app.js
