const { Router } = require('express');
const routes = Router();

routes.get('/', (req, res) => {
  res.json({ message: 'Docker compose' });
});

module.exports = routes;
