const express = require('express');
const SongUpload = require('../services/SongUpLoad');
const router = express.Router()
const initUpload = (app,upload) => {
    router.post("/upload", upload.single("file"),SongUpload);
    return app.use(router)
}
module.exports = initUpload;