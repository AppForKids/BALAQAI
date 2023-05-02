import mongoose from "mongoose";
import Track from "../Track/Track.js";
const { Schema, model } = mongoose;

const AlbumSchema = new Schema({
  title: String,
  description: String,
  coverImg: String,
  tracks: {
    type: [
      {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Track",
      },
    ],
  },
});

export default model("Album", AlbumSchema);
