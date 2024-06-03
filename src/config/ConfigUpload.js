const multer  = require('multer')
require('dotenv').config() 
//Disk storage engine 
const storage = multer.diskStorage({
    destination: function(req, file, cb) {
      cb(null, process.env.DIRECTORY_UPLOAD);
    },
    filename: function(req, file, cb) {
      const uniqueSuffix = Date.now()  + Math.round(Math.random() * 1E9)
      cb(null,uniqueSuffix+"_"+ file.originalname);
    },
  });
//Init Multer
const upload = multer({ storage: storage })
module.exports = upload