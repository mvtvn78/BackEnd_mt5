const express = require('express');
const {UpLoadService} = require('../services/UpLoadService');
const router = express.Router()
const initUpload = (app,upload) => {
    router.post("/upload", upload.single("file"),UpLoadService);
    return app.use(router)
}
module.exports = initUpload;