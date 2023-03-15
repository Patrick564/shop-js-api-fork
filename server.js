const express = require('express')
const mysql = require('mysql2')

const pool = require('./src/db/connection.js')

const conn = mysql.createConnection({
  host: 'containers-us-west-187.railway.app',
  user: 'root',
  port: 6318,
  password: 'WXmV1nUCekSbDetn5L4P',
  database: 'railway'
})

const app = express()

app.get('/', (req, res) => {
  res.send("hello")
})

app.get('/productos/:id', (req, res) => {
  res.send("hello")
})

app.get('/lugares', async (req, res) => {
  conn.query('SELECT * FROM lugares', (err, results, fields) => {
    res.json({ 'lugares': results })
  })
})

app.get('/destinos', async (req, res) => {
  conn.query('SELECT * FROM destino', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'res': results })
  })
})

app.get('/categoria-dos', (req, res) => {
  res.send("hello")
})

app.get('/categorias', (req, res) => {
  conn.query('SELECT * FROM categorias', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'categorias': results })
  })
})

app.listen("8000", () => {
  console.log("works")
})
