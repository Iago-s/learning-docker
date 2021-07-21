const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Simples projeto em express!</h1>');
});

app.listen(PORT, () => console.log(`server started port ${PORT}`));
