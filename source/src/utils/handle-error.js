/**
 * Middleware que se ejecuta cuando se detecta un error en la aplicación
 * que no está controlado
 * @param { Error } err
 * @param { Request } req
 * @param { Response } res
 * @param { NextFunction } next
 */
module.exports = (err, req, res, next) => {
  const status = err.status ?? 500;
  res.status(status).json({ msg: err.message });
};
