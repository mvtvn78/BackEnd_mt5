const express = require('express')
const router = express.Router()
const {getNations,registerAPI,loginAPI,forgotPass} = require("../controllers/apiController")
const initApiRoutes = (app) => {
    router.get("/nations",getNations)
    router.post("/register",registerAPI)
    router.post("/login",loginAPI)
    router.post("/forgot",forgotPass)

    //URL : domain + /api/v1
    return app.use("/api/v1",router)
}
module.exports = initApiRoutes