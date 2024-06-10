const multer  = require('multer');
const { CutFile } = require('../services/UpLoadService');
require('dotenv').config() 
//Disk storage engine 
const storage = multer.diskStorage({
    destination: function(req, file, cb) {
      cb(null, process.env.DIRECTORY_UPLOAD);
    },
    filename: function(req, file, cb) {
      const uniqueSuffix = Date.now()  + Math.round(Math.random() * 1E9)
      let cutfile = CutFile(file.originalname)
      cb(null,uniqueSuffix+"_"+ cutfile);
    },
  });
//Init Multer
const upload = multer({ storage: storage })
module.exports = upload