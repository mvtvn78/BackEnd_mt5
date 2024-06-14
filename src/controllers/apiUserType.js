const { ErrorServices } = require("../services/ErrorService");
const UserType = require("../model/UserType");
// getUserTypes Middleware
const getUserTypes = async (req,res)=>{
    try {
        const id = req.query.id;
        if(id)
        {
            const vl = await UserType.getUserTypeByUserCode(id)
            if(!vl)
                return res.json(ErrorServices("Cannot get usertype by id",-1,''))
            return res.json(ErrorServices("Retrive UserType By Code Successfully",0,vl))
        }
        const value = await UserType.getUserTypeList()
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve UserTypes information successfully',0,value)
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
//addUserType Middleware
const addUserType = async(req,res)=>{
    //get payload from body
    const tenQuyen = req.body.tenQuyen
    const giaTri = req.body.giaTri
    const value = await UserType.CreateNew(tenQuyen,giaTri)
    if(value)
        return res.json(ErrorServices("Addition  succesful ",0,''))
   return res.json(ErrorServices("Addition has failed",-1,''))
}
//updateUserType Middleware
const updateUserType = async(req,res)=>{
    //get payload from body
    const maLoai = req.body.maLoai
    const tenQuyen = req.body.tenQuyen
    const giaTri = req.body.giaTri
    const value = await UserType.Update(["TenQuyen","GiaTri"],[tenQuyen,giaTri],maLoai)
    if(value)
        return res.json(ErrorServices("Update  succesful ",0,''))
   return res.json(ErrorServices("Update has failed",-1,''))
}
//removeUserType  Middleware
const removeUserType = async(req,res)=>{
     //get payload from body
     const maLoai = req.body.maLoai
     let value = await UserType.Delete(maLoai)
     if(value)
         return res.json(ErrorServices("Delete successfully ",0,''))
    return res.json(ErrorServices("Deletion has failed",-1,''))
}

//searchUserTypes  Middleware
const searchUserTypes = async(req,res)=>{
    //get payload from body
    const maLoai = req.query.maLoai
    const tenLoai = req.query.tenLoai
    let value = await UserType.searchUserTypes([getParamSearch(maLoai),getParamSearch(tenLoai)])
    if(value)
        return res.json(ErrorServices("Retrive successfully ",0,value))
   return res.json(ErrorServices("Retrive has failed",-1,''))
}

module.exports = {getUserTypes,addUserType,updateUserType,removeUserType,searchUserTypes}