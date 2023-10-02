const router = require('express').Router();

router.get('/', (req, res) => {
  res.json({ msg: 'Estamos en las rutas del cliente' });
});

module.exports = router;
