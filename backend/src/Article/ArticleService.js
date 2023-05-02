import Article from "./Article.js";
import FileService from "../FileService/FileService.js";

class ArticleService {
  async create(article) {
    return Article.create(article);
  }

  async get(id) {
    if (!id) throw new Error("id is null");
    return await Article.findById(id);
  }

  async getAll(pageSize, page) {
    return await Article.find()
      .limit(pageSize)
      .skip(pageSize * page);
  }

  async update(article) {
    if (!article._id) throw new Error("Fairy Tale id is null");
    const articleDocument = await Article.findById(article._id);
    if (!articleDocument) throw new Error("Fairy tale does not exist");
    await FileService.removeFile(articleDocument.coverImg);
    return await Article.findByIdAndUpdate(article._id, article);
  }

  async delete(id) {
    if (!id) throw new Error("id is null");
    const article = await Article.findByIdAndDelete(id);
    if (!article) throw new Error("Fairy Tale does not exits");
    await FileService.removeFile(article.coverImg);
    return article;
  }
}

export default new ArticleService();
