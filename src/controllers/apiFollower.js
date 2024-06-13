const {ErrorServices} = require("../services/ErrorService")
const UserFollow = require("../model/UserFollow");
const User = require("../model/User");
const Artist = require("../model/Artist");
const { getParamSearch } = require("../services/MySqlService");
//getFollowList Middleware
const getFollowList = async(req,res)=>{
    try {
        //query param
        const ID = req.query.id;
        const NS = req.query.ns;
        // can get
        if(NS)
            {
                const value = await UserFollow.getUserFollowListBY(["MANS"],[NS])
                if(!value)
                {
                    return res.json(
                        ErrorServices('An error occurred',-1,'')
                    )
                }
                return res.json(
                    ErrorServices('Retrieve UserFollowList information successfully',0,value)
                )
            }
        // can get
        if(ID)
        {
            const value = await UserFollow.getUserFollowListBY(["MAND"],[ID])
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve UserFollowList information successfully',0,value)
            )
        }
        //
        const value = await UserFollow.getUserFollowList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve UserFollowList information successfully',0,value)
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
const addFollow = async(req,res)=>{
    //get payload from body
    const maND = req.body.maND
    const maNS = req.body.maNS
    let value = await User.getUserBy(["MAND"],[maND])
    if(!value)
        return res.json(ErrorServices("User code not found",-1,''))
    value = await Artist.getArtistBY(["MANS"],[maNS])
    if(!value)
        return res.json(ErrorServices("Artist code not found",-1,''))
    value = await UserFollow.CreateNew(maND,maNS,new Date())
    console.log(value);
    if(value)
        return res.json(ErrorServices("Addition succesfully ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//removeFollow 
const removeFollow = async(req,res)=>{
     //get payload from body
     const maND = req.body.maND
     const maNS = req.body.maNS
     let value = await User.getUserBy(["MAND"],[maND])
     if(!value)
         return res.json(ErrorServices("User code not found",-1,''))
     value = await Artist.getArtistBY(["MANS"],[maNS])
     if(!value)
         return res.json(ErrorServices("Artist code not found",-1,''))
     value = await UserFollow.Delete([maND,maNS]);
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}
// searchFollow 
const searchFollow = async(req,res)=>{
    //get payload from body
    const maND = req.query.maND
    const maNS = req.query.maNS
    const value = await UserFollow.searchFollow([getParamSearch(maND),getParamSearch(maNS)]);
    if(value)
        return res.json(ErrorServices("Retrive successfully ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
module.exports = {getFollowList,addFollow,removeFollow,searchFollow}