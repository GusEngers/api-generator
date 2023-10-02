const router = require('express').Router();
const client = require('./client');
const api = require('./api');

app.use('/', client);
app.use('/api', api);

module.exports = router;
