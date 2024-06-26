const dotenv = require("dotenv");
dotenv.config();

const express = require("express");
const bodyParser = require("body-parser");
const app = express();

const router = require("./router/main.router");

app.use(bodyParser.json());
app.use(router);

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(
    `Antcritique server is running on port ${port}. Link: http://localhost:${port}`
  );
});
