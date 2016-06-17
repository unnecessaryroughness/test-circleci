FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y git git-core curl

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash && nvm install v5.10.0

# Copy app to /src
COPY . /src && cd /src && npm install

EXPOSE 8080

CMD cd /src && node ./app.js
