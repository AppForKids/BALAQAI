import Router from "express";
import multer from "multer";
import TrackController from "./TrackController.js";
import AuthMiddleware from "../middleware/AuthMiddleware.js";

const router = new Router();
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    const imageMimeTypes = ["image/jpeg", "image/jpg", "image/png"];
    const audioMimeTypes = ["audio/mpeg"];

    if (imageMimeTypes.indexOf(file.mimetype) > -1) {
      cb(null, "uploads/images");
    } else if (audioMimeTypes.indexOf(file.mimetype) > -1) {
      cb(null, "uploads/audios");
    } else {
      cb(null, "uploads");
    }
  },
  filename: function (req, file, cb) {
    const uniqueSuffix = Date.now() + "-" + Math.round(Math.random() * 1e9);
    cb(null, uniqueSuffix);
  },
});

const upload = multer({ storage: storage });

router.get("/", AuthMiddleware.checkToken, TrackController.getAll);
router.get("/:id", TrackController.get);
router.post(
  "/",
  AuthMiddleware.checkToken,
  upload.fields([{ name: "audioFile" }, { name: "coverImg" }]),
  TrackController.create
);
router.put(
  "/",
  AuthMiddleware.checkToken,
  upload.fields([{ name: "audioFile" }, { name: "coverImg" }]),
  TrackController.update
);
router.delete("/:id", AuthMiddleware.checkToken, TrackController.delete);

export default router;
