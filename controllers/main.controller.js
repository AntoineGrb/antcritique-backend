const dataMapper = require("../db/dataMapper");

const mainController = {
  getCoverById: async (req, res) => {
    try {
      const rows = await dataMapper.getCoverById(req.params.id);
      res.json(rows);
    } catch (error) {
      console.error(error);
      res.status(500).json("Error retrieving movies");
    }
  },

  getMovies: async (req, res) => {
    try {
      const rows = await dataMapper.getAllMovies();
      res.json(rows);
    } catch (error) {
      console.error(error);
      res.status(500).json("Error retrieving movies");
    }
  },

  getTvShows: async (req, res) => {
    try {
      const rows = await dataMapper.getAllTvShows();
      res.json(rows);
    } catch (error) {
      console.error(error);
      res.status(500).json("Error retrieving tv shows");
    }
  },

  getBooks: async (req, res) => {
    try {
      const rows = await dataMapper.getAllBooks();
      res.json(rows);
    } catch (error) {
      console.error(error);
      res.status(500).json("Error retrieving books");
    }
  },

  getVideoGames: async (req, res) => {
    try {
      const rows = await dataMapper.getAllVideoGames();
      res.json(rows);
    } catch (error) {
      console.error(error);
      res.status(500).json("Error retrieving video games");
    }
  },
};

module.exports = mainController;
