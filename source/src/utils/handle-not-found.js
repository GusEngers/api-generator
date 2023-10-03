/**
 * Middleware que se ejecuta cuando la ruta a la cual se quiere acceder no existe
 * @param { Request } req
 * @param { Response } res
 */
module.exports = (req, res) => {
  res.status(404).json({ msg: 'Ruta Not Found' });
};
