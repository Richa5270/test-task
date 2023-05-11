
const mysql = require('mysql2/promise');

const pool = mysql.createPool({host:'localhost', user: 'root', database: 'oitodb'});

const main = async() => {
    const connection = await pool.getConnection();
    return connection;
}
  

    module.exports = {
        main
    }