if (process.env.NODE_ENV !== `development`) {
  require(`dotenv`).config();
}

const mariadb = require('mariadb');

const pool = mariadb.createPool({
  host: process.env.DESTINY_DB_HOST,
  user: process.env.DESTINY_DB_USER_WRITE,
  password: process.env.DESTINY_DB_PASSWORD_WRITE,
  connectionLimit: 5
});
console.log('mariadb', mariadb);

export async function asyncFunction() {
  let conn;
  try {
    conn = await pool.getConnection();
    const rows: any = await conn.query(
      'SELECT * from asterisk.queuelog limit 10'
    );
    // rows: [ {val: 1}, meta: ... ]
    console.log('rows', rows);

    // const res: any = await conn.query('INSERT INTO myTable value (?, ?)', [
    //   1,
    //   'mariadb'
    // ]);
    // console.log('res', res);

    // res: { affectedRows: 1, insertId: 1, warningStatus: 0 }
    // eslint-disable-next-line no-useless-catch
  } catch (err) {
    throw err;
  } finally {
    if (conn) conn.release(); //release to pool
  }
}

asyncFunction();
