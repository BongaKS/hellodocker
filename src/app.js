var express = require('express');
var path = require('path');
var app = express();
app.use(express.static('images'));
app.get('/', function (req, res) {
  res.sendFile(path.resolve(__dirname, 'index.html'));
});
app.listen(9000, function () {
  console.log('Example app listening on port 9000!');
});
