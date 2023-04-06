const express = require("express");
const app = express();

app.use(express.static("public"));
const PORT = 3000;

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});
app.listen(PORT, (error) => {
  console.log("Serving at http://localhost:3000");
});
