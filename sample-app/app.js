const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Fundamentals of DevOps!');
});

app.get('/healthz', (req, res) => {
  res.send('App is healthy')
});

module.exports = app;