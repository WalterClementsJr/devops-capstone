const express = require("express");

(async () => {
  const app = express();
  const port = process.env.PORT || 9090;

  app.use(express.static("./"));

  app.get("/", async (req, res) => {
    res.render("index.html");
  });

  app.listen(port, () => {
    console.log(`Server started at http://localhost:${port}`);
  });
})();
