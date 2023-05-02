import AlbumService from "./AlbumService.js";
import FileService from "../FileService/FileService.js";

class AlbumController {
  async create(req, res) {
    try {
      const createdFile = await FileService.saveFile(req.file);
      const album = await AlbumService.create({
        ...req.body,
        coverImg: createdFile,
      });
      return res.json(album);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async get(req, res) {
    try {
      const album = await AlbumService.get(req.params.id);
      return res.json(album);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async getAll(req, res) {
    try {
      const pageSize = req.query.pageSize ? parseInt(req.query.pageSize) : 10;
      const page = req.query.page ? parseInt(req.query.page - 1) : 0;
      const albums = await AlbumService.getAll(pageSize, page);
      return res.json(albums);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }

  async update(req, res) {
    try {
      const createdFile = await FileService.saveFile(req.file);
      const album = await AlbumService.update({
        ...req.body,
        coverImg: createdFile,
      });
      return res.json(album);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }
  async delete(req, res) {
    try {
      const album = await AlbumService.delete(req.params.id);
      return res.json(album);
    } catch (e) {
      res.status(500).json(e.message);
    }
  }
}

export default new AlbumController();
