const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')
const morgan = require('morgan')
const express = require('express')
const path = require('path')
const cors = require('cors')
const corsOptions = require('./Cors')
require('dotenv').config() 
const conn = (app) => {
    //config 
    app.use(cookieParser())
    //config morgan
    app.use(morgan('combined'))
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