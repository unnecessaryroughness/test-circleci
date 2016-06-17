FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y git git-core curl

RUN git clone git://github.com/creationix/nvm.git /nvm

# Copy app to /src
COPY . /src

RUN chmod +x /nvm/nvm.sh
RUN . /nvm/nvm.sh && nvm install v5.10.0 && cd /src && npm install && echo ". /nvm/nvm.sh" >> /root/.bashrc

EXPOSE 8080

CMD cd /src && node ./app.js
