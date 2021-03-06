const express = require('express');
const cors = require('cors');
const { backPort } = require('./db-config');
const { setupRoutes } = require('./routes/index');

const app = express();

app.use(express.json());
app.use(cors());

setupRoutes(app);

// 404 Error
app.use('/', (req, res) => {
  const msg = `Page not found: ${req.method} ${req.url}`;
  res.status(404).send(msg);
});

app.listen(backPort, () => {
  console.log(`listening on http://localhost:${backPort} !`);
});
