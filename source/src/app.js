const express = require('express');
const path = require('path');

// Rutas importadas
const client = require('./client/routes');
const api = require('./api/routes');

// Utilidades importadas
const handleCors = require('./utils/handle-cors');
const handleError = require('./utils/handle-error');
const handleNotFound = require('./utils/handle-not-found');

const app = express();

// Middlewares y ajustes generales
app.disable('x-powered-by');
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use('/public', express.static(path.join(__dirname, 'public')));
app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');
app.use(handleCors);
app.use(require('morgan')('dev'));

// Rutas
app.use('/', client);
app.use('/api', api);

// Manejo de rutas especiales
app.use(handleError);
app.use(handleNotFound);

module.exports = app;
