const { getCoverById } = require("../controllers/main.controller");
const pool = require("../db/db_client");

const dataMapper = {
  getAllMovies: async () => {
    const { rows } = await pool.query("SELECT * FROM movie");
    return rows;
  },

  getAllTvShows: async () => {
    const { rows } = await pool.query("SELECT * FROM tv_show");
    return rows;
  },

  getAllBooks: async () => {
    const { rows } = await pool.query("SELECT * FROM book");
    return rows;
  },

  getAllVideoGames: async () => {
    const { rows } = await pool.query("SELECT * FROM video_game");
    return rows;
  },

  getCoverById: async (id) => {
    const { rows } = await pool.query("SELECT * FROM cover WHERE id = $1", [
      id,
    ]);
    return rows[0];
  },
};

module.exports = dataMapper;
