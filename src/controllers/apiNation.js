const {ErrorServices} = require("../services/ErrorService")
const Nation = require("../model/Nation")
// getNations Middleware
const getNations = async(req,res)=>{
        try {
            const value =  await Nation.getNationList();
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve country information successfully',0,value)
            )
        }
        catch(err)
        {
            console.log("error",err);
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
}

//addNation Middleware
const addNation = async(req,res)=>{
    //get payload from body
    const maQT = req.body.maQT;
    const tenQT = req.body.tenQT
    const anh = req.body.anh
    const value = await Nation.CreateNew(maQT,tenQT,anh)
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//updateNation Middleware
const updateNation = async(req,res)=>{
    //get payload from body
    const maQT = req.body.maQT;
    const tenQT = req.body.tenQT
    const anh = req.body.anh
    const value = await UserType.Update(["TenQT","Anh"],[tenQT,anh],maQT)
    if(value)
        return res.json(ErrorServices("Update  succesful ",0,''))
   return res.json(ErrorServices("Update has failed",-1,''))
}
//removeNation  Middleware
const removeNation = async(req,res)=>{
     //get payload from body
     const maQT = req.body.maQT
     let value = await Nation.Delete(maQT)
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}
//searchNations  Middleware
const searchNations = async(req,res)=>{
    //get payload from body
    const maQG = req.body.maQG
    const tenQG = req.body.tenQG
    let value = await Nation.searchUserTypes([getParamSearch(maQG),getParamSearch(tenQG)])
    if(value)
        return res.json(ErrorServices("Retrive successfully ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}
module.exports = {getNations,addNation,updateNation,removeNation,searchNations}