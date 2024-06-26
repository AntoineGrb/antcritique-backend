const router = require("express").Router();
const mainController = require("../controllers/main.controller");

router.get("/cover/:id", mainController.getCoverById);
router.get("/movies", mainController.getMovies);
router.get("/tv-shows", mainController.getTvShows);
router.get("/books", mainController.getBooks);
router.get("/video-games", mainController.getVideoGames);

module.exports = router;
