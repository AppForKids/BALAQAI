import Router from "express";
import multer from "multer";
import ArticleController from "./ArticleController.js";
import AuthMiddleware from "../middleware/AuthMiddleware.js";

const router = new Router();
const imageUpload = multer({ dest: "uploads/images" });

router.get("/", AuthMiddleware.checkToken, ArticleController.getAll);
router.get("/:id", AuthMiddleware.checkToken, ArticleController.get);
router.post(
  "/",
  AuthMiddleware.checkToken,
  imageUpload.single("coverImg"),
  ArticleController.create
);
router.put(
  "/",
  AuthMiddleware.checkToken,
  imageUpload.single("coverImg"),
  ArticleController.update
);
router.delete("/:id", AuthMiddleware.checkToken, ArticleController.delete);

export default router;
