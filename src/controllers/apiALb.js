const { ErrorServices } = require("../services/ErrorService");
const Album = require("../model/Album");
// getAlbums Middleware
const getAlbums = async (req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        // can get
        if(ID)
        {
            const value = await Album.getAlbumBy(ID)
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve Albums information successfully',0,value)
            )
        }
        const value = await Album.getAlbumList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve Albums information successfully',0,value)
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
//addAlbum Middleware
const addAlbum = async(req,res)=>{
    //get payload from body
    const tenALB = req.body.tenALB;
    const moTa = req.body.moTa;
    const hinhanh = req.body.hinhanh;
    const tinhTrang = req.body.tinhTrang
    const value = await Album.CreateNew(tenALB,moTa,hinhanh)
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//updateAlbum Middleware
const updateAlbum = async(req,res)=>{
    //get payload from body
    const maALB = req.body.maALB;
    const tenALB = req.body.tenALB;
    const moTa = req.body.moTa;
    const hinhanh = req.body.hinhanh;
    const tinhTrang = req.body.tinhTrang
    const value = await Album.Update(["TenALB","Mota","HinhAnh","TinhTrang"],[tenALB,moTa,hinhanh,tinhTrang],maALB)
    if(value)
        return res.json(ErrorServices("Update  succesful ",0,''))
   return res.json(ErrorServices("Update has failed",-1,''))
}
//removeAlbum  Middleware
const removeAlbum = async(req,res)=>{
     //get payload from body
     const maALB = req.body.maALB;
     let value = await Album.Delete(maALB)
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}
module.exports = {getAlbums,updateAlbum,removeAlbum,addAlbum}