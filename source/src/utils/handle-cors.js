/**
 * Middleware de configuración de CORS, establece los orígenes, headers y métodos
 * autorizados
 * @param { Request } req
 * @param { Response } res
 * @param { NextFunction } next
 */
module.exports = (req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  res.setHeader(
    'Access-Control-Allow-Methods',
    'GET, POST, DELETE, PUT, OPTIONS, PATCH'
  );
  next();
};
