const { ErrorServices } = require("../services/ErrorService");
const FavSong = require("../model/FavSong");
const Song = require("../model/Song");
const User = require("../model/User");
// getFavSongs Middleware
const getFavSongs = async (req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        // can get
        if(ID)
        {
            const value = await FavSong.getFavListBy(["MAND"],[ID])
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve UserFavSongs information successfully',0,value)
            )
        }
        //
        const value = await FavSong.getFavList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve UserFavSongs information successfully',0,value)
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
//addFollow Middleware
const addFavSong = async(req,res)=>{
    //get payload from body
    const maND = req.body.maND
    const maBH = req.body.maBH
    let value = await User.getUserBy(["MAND"],[maND])
    if(!value)
        return res.json(ErrorServices("User code not found",-1,''))
    value = await Song.getSongBy(["MABH"],[maBH])
    if(!value)
        return res.json(ErrorServices("Song code not found",-1,''))
    value = await FavSong.CreateNew(maND,maBH,new Date())
    if(value)
        return res.json(ErrorServices("Addition succesfuly ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//removeFavSong 
const removeFavSong = async(req,res)=>{
     //get payload from body
     const maND = req.body.maND
     const maBH = req.body.maBH
     let value = await User.getUserBy(["MAND"],[maND])
     if(!value)
         return res.json(ErrorServices("User code not found",-1,''))
     value = await Song.getSongBy(["MABH"],[maBH])
     if(!value)
        return res.json(ErrorServices("Song code not found",-1,''))
     value = await FavSong.Delete([maND,maBH])
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}
module.exports = {getFavSongs,addFavSong,removeFavSong}