import Collection from "./Collection.js";
import FileService from "../FileService/FileService.js";

class CollectionService {
  async create(collection) {
    return Collection.create(collection);
  }

  async get(id) {
    if (!id) throw new Error("id is null");
    return await Collection.findById(id).populate("articles");
  }

  async getAll(pageSize, page) {
    return await Collection.find()
      .limit(pageSize)
      .skip(pageSize * page);
  }

  async update(collection) {
    if (!collection._id) throw new Error("Collection id is null");
    const collectionDocument = await Collection.findById(collection._id);
    if (!collectionDocument) throw new Error("Collection does not exist");
    if (collectionDocument.coverImg)
      await FileService.removeFile(collectionDocument.coverImg);
    return await Collection.findByIdAndUpdate(collection._id, collection);
  }

  async delete(id) {
    if (!id) throw new Error("id is null");
    const collection = await Collection.findByIdAndDelete(id);
    if (!collection) throw new Error("Fairy Tale does not exits");
    await FileService.removeFile(collection.coverImg);
    return collection;
  }
}

export default new CollectionService();
