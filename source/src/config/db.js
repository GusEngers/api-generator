const { connect } = require('mongoose');
require('dotenv').config();

async function db() {
  try {
    await connect(process.env.DB_URI).then(() => {
      console.log('[INFO] Database connected');
    });
  } catch (error) {
    console.error('[ERROR] Error connecting database:', error);
    process.exit(1);
  }
}

module.exports = db;
