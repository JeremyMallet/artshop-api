// Un p'tit middleware pour verif si un user est connecté (= présent en session)
// Si c'est le cas, on le rajoute dans les locals
// ce qui nous permettra de les utiliser dans no views pour de l'affichage conditionnel !

const userMiddleware = (req, res, next) => {
    // si un user est connecté
    if (req.session.user) {
      // alors on le mémorise dans les locals
      // https://expressjs.com/en/5x/api.html#res.locals
      // https://kourou.oclock.io/ressources/fiche-recap/express/#l%e2%80%99objet-locals
      res.locals.user = req.session.user;
    } else {
      // sinon on vide locals.user pour être sûr de ne pas avoir les infos d'un user qui n'est plus connecté
      delete res.locals.user;
    }
  
    // Et on passe la main au mw suivant !
    next();
  }
  
  module.exports = userMiddleware;
  