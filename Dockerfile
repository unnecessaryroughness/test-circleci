FROM node:4-onbuild

# Copy app to /src
COPY . /src && cd /src && npm install

EXPOSE 8080

CMD cd /src && node ./app.js
