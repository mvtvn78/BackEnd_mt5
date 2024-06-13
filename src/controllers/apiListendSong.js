const { ErrorServices } = require("../services/ErrorService");
const ListenedSong = require("../model/ListenedSong");
const User = require("../model/User");
const Song = require("../model/Song");
const { getParamSearch } = require("../services/MySqlService");
// getListendSong Middleware
const getListendSong = async (req,res)=>{
    try {
        //query param
        const user = req.query.user;
        const bh= req.query.bh
        // can get
        if(user &&bh)
        {
            const value = await ListenedSong.getListenedSongListBy(["MAND","MABH"],[user,bh])
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
        if(user)
            {
                const value = await ListenedSong.getListenedSongListBy(["MAND"],[user])
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
    const maND = req.query.maND
    const maBH = req.query.maBH
  
    const value = await ListenedSong.searchListenedSong([getParamSearch(maND),getParamSearch(maBH)])
    if(value)
        return res.json(ErrorServices("Retrive has succesful ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
//
const ChangeTimeListendSong = async(req,res)=>
{
    //get payload from body
    const maND = req.body.maND
    const maBH = req.body.maBH
    let value = await User.getUserBy(["MAND"],[maND])
    if(!value)
        return res.json(ErrorServices("User code not found",-1,''))
    value = await Song.getSongBy(["MABH"],[maBH])
    if(!value)
        return res.json(ErrorServices("Song code not found",-1,''))
    value = await ListenedSong.ChangeTime(maBH,maND)
    if(value)
        return res.json(ErrorServices("Change successfully ",0,''))
   return res.json(ErrorServices("Change has failed",-1,''))
}
// 
const getDeatilsListendListByCode = async(req,res)=>{
     //get payload from body
     const maND = req.query.maND
     if(maND)
     {
        const value = await ListenedSong.getListendSongDetailByUserCode(maND);
        if(value)
        return res.json(ErrorServices("Retrive successfully ",0,value))
     }
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
module.exports ={getListendSong,addListendSong,searchListendSong,ChangeTimeListendSong,getDeatilsListendListByCode}