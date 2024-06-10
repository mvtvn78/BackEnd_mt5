const { ErrorServices } = require("./ErrorService");
// UpLoadService middleware
const UpLoadService =  (req, res, next) => {
    try {
        if(req.file.filename)
            return res.json(ErrorServices("Upload Successfully",0,req.file.filename));
        return res.json(ErrorServices("Upload has failed",-1,''));
    }
    catch (ex){
        console.log("Upload has failed",ex);
        return res.json(ErrorServices("Upload has failed",-1,''));
    }
}
const getExtension = fileName => {
    let extension = fileName.split(".")
    extension = extension[extension.length-1]
    extension = "."+extension
    return extension
}
const CutFile = fileName => {
    if(fileName.length < 20)
        return fileName
    return fileName.substr(0,17) +  Math.round(Math.random() * 100) + getExtension(fileName)

}
module.exports = {UpLoadService,CutFile};
