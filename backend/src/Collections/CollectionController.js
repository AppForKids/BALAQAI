import CollectionService from "./CollectionService.js";
import FileService from "../FileService/FileService.js";

class CollectionController {
  async create(req, res) {
    try {
      const createdFile = await FileService.saveFile(req.file);
      const collection = await CollectionService.create({
        ...req.body,
        coverImg: createdFile,
      });
      return res.json(collection);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async get(req, res) {
    try {
      const collection = await CollectionService.get(req.params.id);
      return res.json(collection);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async getAll(req, res) {
    try {
      const pageSize = req.query.pageSize ? parseInt(req.query.pageSize) : 10;
      const page = req.query.page ? parseInt(req.query.page - 1) : 0;
      const collections = await CollectionService.getAll(pageSize, page);
      return res.json(collections);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async update(req, res) {
    try {
      const createdFile = await FileService.saveFile(req.file);
      const collection = await CollectionService.update({
        ...req.body,
        coverImg: createdFile,
      });
      return res.json(collection);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }
  async delete(req, res) {
    try {
      const collection = await CollectionService.delete(req.params.id);
      return res.json(collection);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }
}

export default new CollectionController();
