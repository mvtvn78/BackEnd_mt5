const { ErrorServices } = require("../services/ErrorService");
const ListenedSong = require("../model/ListenedSong");
const User = require("../model/User");
const Song = require("../model/Song");
// getListendSong Middleware
const getListendSong = async (req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        // can get
        if(ID)
        {
            const value = await ListenedSong.getListenedSongListBy(["MAND"],[ID])
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve ListendSong information successfully',0,value)
            )
        }
        //
        const value = await ListenedSong.getListenedSongList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve ListendSongs information successfully',0,value)
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
// addListendSong Middleware
const addListendSong = async(req,res)=>{
    //get payload from body
    const maND = req.body.maND
    const maBH = req.body.maBH
    let value = await User.getUserBy(["MAND"],[maND])
    if(!value)
        return res.json(ErrorServices("User code not found",-1,''))
    value = await Song.getSongBy(["MABH"],[maBH])
    if(!value)
        return res.json(ErrorServices("Song code not found",-1,''))
    value = await ListenedSong.CreateNew(maBH,maND,new Date())
    if(value)
        return res.json(ErrorServices("Addition has succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
// addListendSong Middleware
const searchListendSong = async(req,res)=>{
    //get payload from body
    const maND = req.body.maND
    const maBH = req.body.maBH
    let value = await User.getUserBy(["MAND"],[maND])
    if(!value)
        return res.json(ErrorServices("User code not found",-1,''))
    value = await Song.getSongBy(["MABH"],[maBH])
    if(!value)
        return res.json(ErrorServices("Song code not found",-1,''))
    value = await ListenedSong.searchListenedSong([getParamSearch(maND),getParamSearch(maBH)])
    if(value)
        return res.json(ErrorServices("Retrive has succesful ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
module.exports ={getListendSong,addListendSong,searchListendSong}