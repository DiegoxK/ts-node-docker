import express from "express";
import * as dotenv from "dotenv";

//dotenv
dotenv.config();

const PORT = process.env.PORT || 3000;
const app = express();

app.get("/", (req, res) => {
  res.send("Docker is cool 🐋!");
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
