const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Hello World! - I am simple node server built via express");
});

app.listen(8080, () => {
  console.log("Listening on port 8085");
});
