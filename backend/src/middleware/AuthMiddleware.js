import jwt from "jsonwebtoken";

const jwtSecretKey = "somesecretkey";

class AuthMiddleware {
  checkToken(req, res, next) {
    try {
      const token = req.headers.authorization.split(" ")[1];
      if (!token) {
        return res.status(401).json({ message: "Has not auth token" });
      }

      const decoded = jwt.verify(token, jwtSecretKey);
      req.user = decoded;
      next();
    } catch (e) {
      return res.status(401).json({ message: "Invalid token" });
    }
  }
}

export default new AuthMiddleware();
