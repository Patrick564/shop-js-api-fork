const mysql = require('mysql2')

const pool = mysql.createConnection({
  host: 'containers-us-west-187.railway.app',
  user: 'root',
  port: 6318,
  password: 'WXmV1nUCekSbDetn5L4P',
  database: 'railway'
})

pool.on('error', (err) => {
  console.log('error at connecting to db')
})

module.exports = pool
