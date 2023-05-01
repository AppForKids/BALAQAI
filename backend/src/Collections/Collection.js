import mongoose from "mongoose";
const { Schema, model } = mongoose;

const CollectionSchema = new Schema({
  title: String,
  description: String,
  coverImg: String,
  articles: {
    type: [
      {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Article",
      },
    ],
  },
});

export default model("Collection", CollectionSchema);
