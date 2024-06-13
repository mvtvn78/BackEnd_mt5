const Song = require("../model/Song");
const { ErrorServices } = require("../services/ErrorService");
const { getParamSearch } = require("../services/MySqlService");
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
    const filenhac = req.body.filenhac
    const value = await Song.Update(["MAALB","MATL","TenBH","TinhTrang","NoiDung","Anh","LuotXem","LoiBatHat","filenhac"],[maALB,maTL,tenBH,tinhTrang,noiDung,anh,luotxem,loibathat,filenhac],maBH)
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
    const maBH =  req.query.maBH;
    const tenBH = req.query.tenBH;
    const value = await Song.searchSong([getParamSearch(maBH),getParamSearch(tenBH)])
    if(value)
        return res.json(ErrorServices("Search successfully",0,value))
    return res.json(ErrorServices("Search has failed",-1,''))
}
// getDetailListSongs  Middleware
const getDetailListSongs= async (req,res)=>{
    const tenBH = req.query.tenBH;
    const value = await Song.searchDetailSongs(tenBH)
    if(value)
        return res.json(ErrorServices("Retrive successfully",0,value))
    return res.json(ErrorServices("Retrive has failed",-1,''))
}
// searchDetails Middleware 
const searchDetails= async (req,res)=>{
    const value = await Song.getDetailSongs()
    if(value)
        return res.json(ErrorServices("Retrive successfully",0,value))
    return res.json(ErrorServices("Retrive has failed",-1,''))
}
//
const IncreaseViewSong = async(req,res) =>{
    const maBH = req.body.maBH;
    const value = await Song.IncreaseView(maBH)
    if(value)
        return res.json(ErrorServices("Inscrease successfully",0,''))
    return res.json(ErrorServices("Inscrease has failed",-1,''))
}
module.exports = {getSongs,updateSong,removeSong,addSong,searchSong,getDetailListSongs,IncreaseViewSong}