const pool = require("../db/db");

const mainController = {
  home: async (req, res) => {
    const { rows } = await pool.query("SELECT * FROM cover");
    res.json(rows);
  },
};

module.exports = mainController;
