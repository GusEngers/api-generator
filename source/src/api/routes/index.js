const router = require('express').Router();

router.get('/', (req, res) => {
  res.json({ msg: 'Estamos en las rutas de la api' });
});

module.exports = router;
