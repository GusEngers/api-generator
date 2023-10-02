const app = require('src/app');
const db = require('./src/config/db');
require('dotenv').config();

async function main() {
  try {
    const PORT = process.env.PORT ?? 3000;
    await db();
    app.listen(PORT, () => {
      console.log('[INFO] Server listening on port:', PORT);
    });
  } catch (error) {
    console.error('[ERROR] Error starting server:', error);
    process.exit(1);
  }
}

main();
