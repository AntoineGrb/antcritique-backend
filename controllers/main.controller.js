const pool = require("../db/db");

const mainController = {
  getCovers: async (req, res) => {
    const { rows } = await pool.query("SELECT * FROM cover");
    res.json(rows);
  },

  getMovies: async (req, res) => {
    const { rows } = await pool.query("SELECT * FROM movie");
    res.json(rows);
  },
};

module.exports = mainController;
