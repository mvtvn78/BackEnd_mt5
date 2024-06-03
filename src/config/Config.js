const bodyParser = require('body-parser')
const express = require('express')
const path = require('path')
const cors = require('cors')
const corsOptions = require('./Cors')
require('dotenv').config() 
const conn = (app) => {
    //config body-parser
    app.use(bodyParser.json())
    app.use(bodyParser.urlencoded({extended :true}))
    //config public directory
    app.use('/assets',express.static(path.join(__dirname,'../public')))
    console.log(path.join(__dirname,'../public'))
    //CORS
    app.use(cors(corsOptions(process.env.REACT_URL,process.env.DASHBOARD_URL)))
}
module.exports = conn