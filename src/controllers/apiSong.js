const Song = require("../model/Song");
const { ErrorServices } = require("../services/ErrorService");
// getSongs Middleware
const getSongs = async (req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        // can get
        if(ID)
        {
            const value = await Song.getSongBy(["MABH"],[ID])
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve Songs information successfully',0,value)
            )
        }
        const value = await Song.getSongList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve Songs information successfully',0,value)
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
//addSong Middleware
const addSong = async(req,res)=>{
    //get payload from body
    const maALB = req.body.maALB;
    const maTL = req.body.maTL;
    const tenBH = req.body.tenBH
    const tinhTrang = req.body.tinhTrang
    const noiDung = req.body.noiDung
    const anh = req.body.anh
    const loibathat = req.body.loibathat
    const value = await Song.CreateNew(maALB,maTL,tenBH,tinhTrang,noiDung,anh,0,loibathat)
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//updateSong Middleware
const updateSong = async(req,res)=>{
    //get payload from body
    const maBH = req.body.maBH;
    const maALB = req.body.maALB;
    const maTL = req.body.maTL;
    const tenBH = req.body.tenBH
    const tinhTrang = req.body.tinhTrang
    const noiDung = req.body.noiDung
    const anh = req.body.anh
    const luotxem = req.body.luotxem
    const loibathat = req.body.loibathat
    const value = await Song.Update(["MAALB","MATL","TenBH","TinhTrang","NoiDung","Anh","LuotXem","LoiBatHat"],[maALB,maTL,tenBH,tinhTrang,noiDung,anh,luotxem,loibathat],maBH)
    if(value)
        return res.json(ErrorServices("Update  succesful ",0,''))
   return res.json(ErrorServices("Update has failed",-1,''))
}
//removeSong  Middleware
const removeSong = async(req,res)=>{
     //get payload from body
     const maBH = req.body.maBH;
     let value = await Song.Delete(maBH)
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}
//Search BY MABH and TENBH
const searchSong = async(req,res) => {
    const maBH =  req.body.maBH;
    const tenBH = req.body.tenBH;
    const value = await Song.searchSong([getParamSearch(maBH),getParamSearch(tenBH)])
    if(value)
        return res.json(ErrorServices("Search successfully",0,value))
    return res.json(ErrorServices("Search has failed",-1,''))
}
module.exports = {getSongs,updateSong,removeSong,addSong,searchSong}