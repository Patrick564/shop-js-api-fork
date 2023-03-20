import cors from 'cors'
import express from 'express'
import { config } from 'dotenv'

import { pool } from './src/db/connection.js'
import { logApp as logger } from './src/logger/logger.js'

config()

const app = express()

app.use(express.json())
app.use(logger)
app.use(cors())

app.get('/', (req, res) => {
  res.send("hello")
})

// lugares route
app.get('/lugares', async (req, res) => {
  pool.query('SELECT * FROM lugares', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'lugares': results })
  })
})

// destinos route
app.get('/destinos', async (req, res) => {
  pool.query('SELECT * FROM destino', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'res': results })
  })
})

// categorias route
app.get('/categorias', (req, res) => {
  pool.query('SELECT * FROM categoria', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'categorias': results })
  })
})

// categorias-dos route
app.get('/categoriados', (req, res) => {
  pool.query('SELECT * FROM categoriados', (err, results, fields) => {
    if (err) console.log(err)

    res.json({ 'categoriados': results })
  })
})

app.post('/categoriados', async (req, res) => {
  // Ejemplo de insert  
  const {nombre,descripcion,marcas} = req.body
  
  //res.json({nombre,descripcion,marcas})
  pool.execute('INSERT INTO categoriados (nombre,descripcion,marcas) VALUES (?,?,?)',
    [nombre, descripcion, marcas], (err, results, fields) => {
      if (err) {
        console.log(err)
        res.status(402).json({ 'error': err.cause })
      }
      
      res.status(201).json({ 'status': true, 'id': results.insertId })
    })
})

app.patch('/categorias/:id/update', (req, res) => {
  res.json({ 'method': req.params['id'] })
})

app.delete('/categorias/:id/delete', (req, res) => {
  res.json({ 'method': req.params['id'] })
})

app.post('/productos', async (req, res) => {
  const idcategoria = req.body.idcategoria
  const [rows] = pool.query('SELECT * FROM productos WHERE idcategoria= ?', [idcategoria], (err, results, fields) => {
    if ([rows] > 0) {
      res.json({ 'productos': results })
    }
  })
})


app.get('/productos/:id', async (req, res) => {
  //para jalar el url
  //res.send(req.params["id"])
  const id = req.params["id"]
  pool.query('SELECT * FROM productos WHERE idcategoria= ?', [id], (err, results, fields) => {
    res.json({ 'productos': results })
  })
})



app.listen(process.env.PORT, () => {
  console.log("server Start")
})
