const express = require('express')
const restful = require('node-restful')
const server = express()
const mongoose = restful.mongoose

//Database
mongoose.Promise = global.Promise
mongoose.connect('mongodb://db/mydb')

//Teste
server.get('/', (req, res, next) => res.send('Backend'))


// Start Sever
server.listen(3000)
