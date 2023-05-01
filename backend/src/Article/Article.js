import mongoose from "mongoose";
const { Schema, model } = mongoose;

const ArticleSchema = new Schema({
  title: String,
  summary: String,
  content: String,
  coverImg: String,
});

export default model("Article", ArticleSchema);
