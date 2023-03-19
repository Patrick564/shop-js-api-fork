import { config } from 'dotenv'
import { createConnection } from 'mysql2'

config()

const pool = createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  port: process.env.DB_PORT,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE
})

pool.on('connection', (conn) => {
  console.log('connecting to database ' + conn)
})

pool.on('error', (err) => {
  console.log(err)
  console.log('error at connecting to db')
})

export { pool }
