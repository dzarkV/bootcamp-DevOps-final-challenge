import express from "express";
// Create a new express app instance
const app: express.Application = express();
const port = 3000;
app.get("/hello", function (req, res) {
  res.send("Hello World!");
});
app.listen(port, function () {
  console.log(`App is listening at http://localhost:${port}!`);
});
