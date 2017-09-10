'use strict'

const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const serverlessMiddleware = require('aws-serverless-express/middleware')
const app = express()

app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))
app.use(serverlessMiddleware.eventContext())

app.post('/events', (req, res) => {
  console.log(req.body)
  res.json({ test: 'content' })
})

module.exports = app
