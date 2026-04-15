const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());

app.get("/api", (req, res) => {
  res.json({ message: "Hello from class" });
});

app.use(express.static("public"));

app.listen(5000, () => {
  console.log("Backend läuft auf Port 5000");
});
