FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y git git-core curl

RUN git clone git://github.com/creationix/nvm.git /nvm

RUN chmod +x /nvm/nvm.sh
RUN . /nvm/nvm.sh
RUN nvm install v5.10.0

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && nodejs ./app.js
