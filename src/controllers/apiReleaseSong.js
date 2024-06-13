const { ErrorServices } = require("../services/ErrorService");
const Artist = require("../model/Artist");
const ReleaseSong = require("../model/ReleaseSong");
const Song = require("../model/Song");
// getReleaseSong Middleware
const getReleaseSong = async (req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        // can get
        if(ID)
        {
            const value = await ReleaseSong.getReleaseBY(["MANS"],[ID])
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve Release Song information successfully',0,value)
            )
        }
        const value = await ReleaseSong.getReleaseALBList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve Release Songs  information successfully',0,value)
        )
    }
    catch(err)
    {
        console.log("error",err);
        res.json(
            ErrorServices('An error occurred',-1,'')
        )
    }
}
//addReleaseSong Middleware
const addReleaseSong = async(req,res)=>{
    //get payload from body
    const maNS = req.body.maNS;
    const maBH = req.body.maBH;
    let value = await Artist.getArtistBY(maNS)
     if(!value)
         return res.json(ErrorServices("Artist code not found",-1,''))
     value = await Song.getSongBy(["MABH"],[maBH])
     if(!value)
        return res.json(ErrorServices("Song code not found",-1,''))
     value = await ReleaseSong.CreateNew(maNS,maBH,new Date())
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//removeReleaseSong  Middleware
const removeReleaseSong = async(req,res)=>{
    //get payload from body
    const maNS = req.body.maNS;
    const maBH = req.body.maBH;
    let value = await Artist.getArtistBY(maNS)
     if(!value)
         return res.json(ErrorServices("Artist code not found",-1,''))
     value = await Song.getSongBy(["MABH"],[maBH])
     if(!value)
        return res.json(ErrorServices("Song code not found",-1,''))
     value = await ReleaseSong.Delete(["MANS","MABH"],[maNS,maBH])
    if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}
// searchReleaseSong Middleware
const searchReleaseSong = async(req,res)=>{
    //get payload from body
    const MANS = req.query.maNS
    const maBH = req.query.maBH;
    const value = await ReleaseSong.searchReleaseSong([getParamSearch(MANS),getParamSearch(maBH)])
    if(value)
        return res.json(ErrorServices("Retrive has succesful ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
module.exports = {getReleaseSong,addReleaseSong,removeReleaseSong,searchReleaseSong}