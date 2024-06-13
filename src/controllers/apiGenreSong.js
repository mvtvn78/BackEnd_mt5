const GenreSong = require("../model/GenreSong");
const {ErrorServices} = require("../services/ErrorService")
// getGereSongs Middleware
const getGereSongs = async(req,res)=>{
        try {
            const value =  await GenreSong.getGenreSongList()
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve Genre Song information successfully',0,value)
            )
        }
        catch(err)
        {
            console.log("error",err);
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
}

//addGenreSong Middleware
const addGenreSong = async(req,res)=>{
    //get payload from body
    const maTL = req.body.maTL;
    const tenTL = req.body.tenTL
    const value = await GenreSong.CreateNew(maTL,tenTL)
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//updateGenreSong Middleware
const updateGenreSong = async(req,res)=>{
    //get payload from body
    const maTL = req.body.maTL;
    const tenTL = req.body.tenTL
    const value = await GenreSong.Update(["TenTL"],[tenTL],maTL)
    if(value)
        return res.json(ErrorServices("Update  succesful ",0,''))
   return res.json(ErrorServices("Update has failed",-1,''))
}
//removeGenreSong  Middleware
const removeGenreSong = async(req,res)=>{
     //get payload from body
     const maTL = req.body.maTL;
     let value = await GenreSong.Delete(maTL)
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}

// searchGenre Middleware
const searchGenre = async(req,res)=>{
    //get payload from body
    const MATL = req.query.maTL;
    const TenTL = req.query.tenTL;
    const value = await GenreSong.searchGenreSong([getParamSearch(MATL),getParamSearch(TenTL)])
    if(value)
        return res.json(ErrorServices("Retrive has succesful ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
module.exports = {getGereSongs,addGenreSong,removeGenreSong,updateGenreSong,searchGenre}