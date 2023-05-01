import express from "express";
import cors from "cors";
import mongoose from "mongoose";
import ArticleRouter from "./Article/ArticleRouter.js";
import TrackRouter from "./Track/TrackRouter.js";
import ProfileRouter from "./Profile/ProfileRouter.js";
import AlbumRouter from "./Album/AlbumRouter.js";
import CollectionRouter from "./Collections/CollectionRouter.js";

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors({ credentials: true, origin: "http://localhost:3000" }));
app.use("/articles", ArticleRouter);
app.use("/track", TrackRouter);
app.use("/albums", AlbumRouter);
app.use("/collections", CollectionRouter);
app.use("/profile", ProfileRouter);
app.use("/images", express.static("uploads/images"));
app.use("/audios", express.static("uploads/audios"));

app.get("/", (req, res) => {
  res.send("Hello world!");
});

mongoose.connect(
  "mongodb+srv://admin:xkZK9VZiHDbu0DZC@cluster0.larfxou.mongodb.net/?retryWrites=true&w=majority"
);

app.listen(PORT, () => {
  console.log("Started");
});
