const { ErrorServices } = require("../services/ErrorService");
const Artist = require("../model/Artist");
const ReleaseALB = require("../model/ReleaseALB");
const Album = require("../model/Album");
const { getParamSearch } = require("../services/MySqlService");
// getReleaseALBs Middleware
const getReleaseALBs = async (req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        // can get
        if(ID)
        {
            const value = await ReleaseALB.getReleaseBY(["MANS"],[ID])
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve Release Albums information successfully',0,value)
            )
        }
        const value = await ReleaseALB.getReleaseALBList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve Release Albums  information successfully',0,value)
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
//addArtist Middleware
const addReleaseALB = async(req,res)=>{
    //get payload from body
    const maNS = req.body.maNS;
    const maALB = req.body.maALB;
    let value = await Artist.getArtistBY(["MANS"],[maNS])
     if(!value)
         return res.json(ErrorServices("Artist code not found",-1,''))
     value = await Album.getAlbumBy(maALB)
     if(!value)
        return res.json(ErrorServices("Album code not found",-1,''))
     value = await ReleaseALB.CreateNew(maNS,maALB,new Date())
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//removeUserType  Middleware
const removeReleaseALB = async(req,res)=>{
     //get payload from body
     const maNS = req.body.maNS;
    const maALB = req.body.maALB;
    let value = await Artist.getArtistBY(["MANS"],[maNS])
    if(!value)
        return res.json(ErrorServices("Artist code not found",-1,''))
    value = await Album.getAlbumBy(maALB)
    if(!value)
       return res.json(ErrorServices("Album code not found",-1,''))
    value = await ReleaseALB.Delete(["MANS","MAALB"],[maNS,maALB])
    if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}

// searchReleaseALBs Middleware
const searchReleaseALBs = async(req,res)=>{
    //get payload from body
    const MANS = req.query.maNS
    const MAALB = req.query.maALB
    const value = await ReleaseALB.searchReleaseALB([getParamSearch(MANS),getParamSearch(MAALB)])
    if(value)
        return res.json(ErrorServices("Retrive has succesful ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
module.exports = {getReleaseALBs,addReleaseALB,removeReleaseALB,searchReleaseALBs}