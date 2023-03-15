require('dotenv').config()
const express = require('express')
const mysql = require('mysql2')

const {pool} = require('./src/db/connection.js')

const app = express()

app.get('/', (req, res) => {
  res.send("hello")
})

app.get('/productos/:id', (req, res) => {
  res.send("hello")
})

app.get('/lugares', async (req, res) => {
  pool.query('SELECT * FROM lugares', (err, results, fields) => {
    res.json({ 'lugares': results })
  })
})

app.get('/destinos', async (req, res) => {
  pool.query('SELECT * FROM destino', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'res': results })
  })
})

app.get('/categoria-dos', (req, res) => {
  pool.query('SELECT * FROM categoriados', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'categoriados': results })
  })
})

app.get('/categoria', (req, res) => {
  pool.query('SELECT * FROM categoria', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'categoria': results })
  })
})

app.listen(process.env.PORT, () => {
  console.log("works")
})
