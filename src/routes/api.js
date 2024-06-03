const express = require('express')
const router = express.Router()
const {TestApi,registerAPI,loginAPI} = require("../controllers/apiController")
const initApiRoutes = (app) => {
    router.get("/test_api",TestApi)
    router.post("/register",registerAPI)
    router.post('/login',loginAPI)
    return app.use("/api/v1",router)
}
module.exports = initApiRoutes