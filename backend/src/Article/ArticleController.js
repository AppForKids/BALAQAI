import ArticleService from "./ArticleService.js";
import FileService from "../FileService/FileService.js";

class ArticleController {
  async create(req, res) {
    try {
      const createdFile = await FileService.saveFile(req.file);
      const article = await ArticleService.create({
        ...req.body,
        coverImg: createdFile,
      });
      return res.json(article);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async get(req, res) {
    try {
      const article = await ArticleService.get(req.params.id);
      return res.json(article);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async getAll(req, res) {
    try {
      const pageSize = req.query.pageSize ? parseInt(req.query.pageSize) : 10;
      const page = req.query.page ? parseInt(req.query.page - 1) : 0;
      const articles = await ArticleService.getAll(pageSize, page);
      return res.json(articles);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async update(req, res) {
    try {
      const createdFile = await FileService.saveFile(req.file);
      const article = await ArticleService.update({
        ...req.body,
        coverImg: createdFile,
      });
      return res.json(article);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }
  async delete(req, res) {
    try {
      const article = await ArticleService.delete(req.params.id);
      return res.json(article);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }
}

export default new ArticleController();
