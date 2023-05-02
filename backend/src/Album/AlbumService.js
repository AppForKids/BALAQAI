import Album from "./Album.js";
import FileService from "../FileService/FileService.js";

class AlbumService {
  async create(album) {
    const createdAlbum = Album.create(album);
    return createdAlbum;
  }

  async get(id) {
    if (!id) throw new Error("id is null");
    return await Album.findById(id).populate("tracks");
  }

  async getAll(pageSize, page) {
    return await Album.find()
      .limit(pageSize)
      .skip(pageSize * page);
  }

  async update(album) {
    if (!album._id) throw new Error("Album id is null");
    const albumDocument = await Album.findById(album._id);
    if (!albumDocument) throw new Error("Album does not exist");
    if (albumDocument.coverImg)
      await FileService.removeFile(albumDocument.coverImg);
    console.log("album: ", album);
    return await Album.findByIdAndUpdate(album._id, album);
  }

  async delete(id) {
    if (!id) throw new Error("id is null");
    const album = await Album.findByIdAndDelete(id);
    if (!album) throw new Error("Fairy Tale does not exits");
    await FileService.removeFile(album.coverImg);
    return album;
  }
}

export default new AlbumService();
