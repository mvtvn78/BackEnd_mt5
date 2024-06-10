const { ErrorServices } = require("../services/ErrorService");
const Artist = require("../model/Artist");
// getArtists Middleware
const getArtists = async (req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        // can get
        if(ID)
        {
            const value = await Artist.getArtistBY(["MANS"],[ID])
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve Artist information successfully',0,value)
            )
        }
        //query paramAZDFG 
        const tenNS = req.query.tenNS;
        if(tenNS)
        {
            const value = await Artist.getArtistBY(["TenNS"],[tenNS])
            if(!value)
            {
                return res.json(
                        ErrorServices('An error occurred',-1,'')
                )
            }
                return res.json(
                    ErrorServices('Retrieve Artist information successfully',0,value)
                )
        }
        //
        const value = await Artist.getArtistList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve Artists information successfully',0,value)
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
const addArtist = async(req,res)=>{
    //get payload from body
    const maQT = req.body.maQT;
    const tennS = req.body.tenNS;
    const anh = req.body.Anh;
    const gt = req.body.gt;
    const ngaysinh = req.body.ngaysinh
    const mota = req.body.mota
    const value = await Artist.CreateNew(maQT,tennS,anh,gt,ngaysinh,mota)
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//updateArtist Middleware
const updateArtist = async(req,res)=>{
    //get payload from body
    const maNS = req.body.maNS
    const maQT = req.body.maQT;
    const tennS = req.body.tenNS;
    const anh = req.body.Anh;
    const gt = req.body.gt;
    const ngaysinh = req.body.ngaysinh
    const mota = req.body.mota
    const value = await Artist.Update(["MAQT","TENNS","Anh","GioiTinh","NgaySinh","MoTa"],[maQT,tennS,anh,gt,ngaysinh,mota],maNS)
    if(value)
        return res.json(ErrorServices("Update  succesful ",0,''))
   return res.json(ErrorServices("Update has failed",-1,''))
}
//removeUserType  Middleware
const removeArtist = async(req,res)=>{
     //get payload from body
     const maNS = req.body.maNS
     let value = await UserType.Delete(maNS)
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}
module.exports = {getArtists,addArtist,updateArtist,removeArtist}