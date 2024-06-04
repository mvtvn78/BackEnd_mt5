const express = require('express')
const app = express()
const config = require("./src/config/config")
require('dotenv').config() 
const port = process.env.PORT || 4000
const initApiRoutes = require('./src/routes/api')
const upload = require('./src/config/ConfigUpload')
const initUpload = require('./src/routes/UploadRoute')
//Testing
const {mailOptions,sendMail} = require("./src/services/EmailService")
//const  {hashTokenByValue,getValueByToken}= require("./src/services/JWTService")
//Config
config(app)
//Routes
initApiRoutes(app)
initUpload(app,upload)

// //testing
// let x = hashTokenByValue({"name ":"Mai Văn Tiền"})
// console.log("Check >>",x);

//OPEN PORT AND RUNNING
app.listen(port, () => {
  console.log(`App is running on port ${port}`)
})