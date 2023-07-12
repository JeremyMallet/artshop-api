const adminMiddleware = (req, res, next) => {
    if (!req.session.user) {
      res.redirect("/login");
    }
  
    if (req.session.user.role === "admin") {
      next();
    } else {
      res.status(401).render("401");
    }
  }
  
  module.exports = adminMiddleware;
  