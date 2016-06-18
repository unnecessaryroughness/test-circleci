// Sample node.js web app for Pluralsight Docker CI course
// For demonstration purposes only
'use strict';

var express = require('express'),
    app = express(),
    mongoose = require('mongoose');

    var self = this;

  //set up connection to mongodb
      self.mongoose = mongoose;

      mongoose.connection.on('open', function() {
          console.log('Connected to Mongo server');
      });

      mongoose.connection.on('error', function(err) {
          console.log('Could not connect to Mongo server');
          console.log(err);
      });

      self.mongourl = (process.env.DKRMONGO_PORT_27017_TCP_ADDR)
                        ? process.env.DKRMONGO_PORT_27017_TCP_ADDR+':'+process.env.DKRMONGO_PORT_27017_TCP_PORT
                        : 'mongodb://localhost/';

      self.mongoose.connect(self.mongourl);
      console.log('connecting to database: ' + self.mongourl);

app.set('views', 'views');
app.set('view engine', 'jade');

app.get('/', function(req, res) {
    res.render('home', {
  });
});

app.listen(8080);
module.exports.getApp = app;
