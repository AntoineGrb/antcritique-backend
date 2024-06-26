const router = require("express").Router();
const mainController = require("../controllers/main.controller");

router.get("/covers", mainController.getCovers);
router.get("/movies", mainController.getMovies);

module.exports = router;
