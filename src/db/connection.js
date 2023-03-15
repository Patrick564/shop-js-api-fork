require('dotenv').config()
const mysql = require('mysql2')

const pool = mysql.createConnection({
  host: process.env.DB_HOST ,
  user: process.env.DB_USER,
  port: process.env.PORT,
  password:process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE
})

pool.on('error', (err) => {
  console.log('error at connecting to db')
})

module.exports = pool
