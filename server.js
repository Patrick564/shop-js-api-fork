
require('dotenv').config()
const express = require('express')
//cors
const cors=require('cors')

const pool = require('./src/db/connection.js')
const logger = require('./src/logger/logger.js')

const app = express()

app.use(logger)
app.use(cors())

app.get('/', (req, res) => {
  res.send("hello")
})

app.get('/productos/:id', (req, res) => {
  //para jalar el url
  //res.send(req.params["id"])
  const id= req.params["id"]
  pool.query('SELECT * FROM productos WHERE idcategoria= ?', [id],(err, results, fields) => {
    res.json({ 'productos': results })
  })
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

app.get('/categoria', (req, res) => {
  pool.query('SELECT * FROM categoria', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'categoria': results })
  })
})

app.get('/categoria-dos', (req, res) => {
  pool.query('SELECT * FROM categoriados', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'categoriados': results })
  })
})





app.listen(process.env.PORT, () => {
  console.log("server Start")
})
