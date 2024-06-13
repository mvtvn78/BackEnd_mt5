const {ErrorServices} = require("../services/ErrorService")
const {CheckValidEmail,CheckUserExist,
    CheckEmailExist,CheckUserByEmail} = require("../services/LoginService")
const {sendMailCreateSuccess,sendPassByEmail} = require("../services/EmailService")
const { hashTokenByValue,getValueByToken } = require("../services/JWTService")
const User = require("../model/User")
const { getParamSearch } = require("../services/MySqlService")
// registerAPI Middleware
const registerAPI = async(req,res)=>{
    //get payload from body
    const maQT = req.body.maQT
    const hoTen = req.body.hoTen
    const gioiTinh = req.body.gioiTinh
    const ngaySinh = req.body.ngaySinh
    const email = req.body.email
    const pass = req.body.pass
    //Check Valid Email
    if(!await CheckValidEmail(email))
    {
        res.json(ErrorServices("Invalid Email",-2,''))
        return;
    }
    //Check Exist Email
    if(await CheckEmailExist(email))
    {
        res.json(ErrorServices("Email Already Exists",-3,''))
        return;
    }
    const checkstage1 = await User.CreateNew(maQT,hoTen,gioiTinh,ngaySinh,email,pass)
    if(checkstage1){
        sendMailCreateSuccess(email)
        res.json(ErrorServices("Registered Successfully",0,checkstage1))
    }
    else 
    {
        res.json(ErrorServices("Registration Failed",-1,''))
    }
}
// loginAPI Middleware
const loginAPI = async (req,res) => {
    const email = req.body.email
    //Check Valid Email
    if(! await CheckValidEmail(email))
    {
        res.json(ErrorServices("Invalid Email",-2,''))
        return;
    }
    const pass = req.body.pass
    // Check User Exist
    const checkstage1 = await CheckUserExist(email,pass)
    if(checkstage1){
        // hash to Token
        const token = hashTokenByValue({
            "MAND": checkstage1[0].MAND,
        })
        res.json(ErrorServices("Logged in successfully",0,{"token":token}))
    }
    else 
    {
        res.json(ErrorServices("Login failed",-1,''))
    }
}
// forgotPass Middleware
const forgotPass = async(req,res) => {
    const email = req.body.email
    const checkstage1 = await CheckEmailExist(email)
    if(checkstage1)
    {
        const value = await CheckUserByEmail(email);
        if(value)
        {
            sendPassByEmail(email,value[0].MatKhau)
            res.json(ErrorServices("Email has been sent!",0,''))
        }
        else {
            res.json(ErrorServices("Something error",-1,''))
        }
    }
    else {
        res.json(ErrorServices("Invalid Email",-2,''))
    }
}
//getUsers Middleware
const getUsers = async(req,res)=>{
    try {
        //query param
        const Token = req.query.token;
        // can get
        if(Token)
        {
            // get id by token
            const ID = getValueByToken(Token).MAND
            console.log(ID);
            const value = await User.getUserBy(["MAND"],[ID]);
            if(!value)
            {
                return res.json(
                    ErrorServices('An error occurred',-1,'')
                )
            }
            return res.json(
                ErrorServices('Retrieve users information successfully',0,value)
            )
        }
        //
        const value =  await User.getUserList();
        if(!value)
        {
            return res.json(
                ErrorServices('An error occurred',-1,'')
            )
        }
        return res.json(
            ErrorServices('Retrieve users information successfully',0,value)
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
//UpdateUser Middleware
const UpdateUser = async(req,res)=>{
     //get payload from body
     const maND = req.body.maND
     const maLOAI = req.body.maLoai
     const maQT = req.body.maQT
     const hoTen = req.body.hoTen
     const gioiTinh = req.body.gioiTinh
     const ngaySinh = req.body.ngaySinh
     const email = req.body.email
     const pass = req.body.pass
     const anh = req.body.Anh
     //Check User Exsist
     if(!await User.getUserBy(["MAND"],[maND]))
     {
        return res.json(ErrorServices("User not found",-1,''))
     }
     //Check Valid Email
     if(!await CheckValidEmail(email))
     {
         return res.json(ErrorServices("Invalid Email",-1,''))
     }
     //Check Exist Email
     if(!await CheckEmailExist(email) || await CheckUserByEmail(email)?.MAND == maND)
     {
        const value = await User.Update(["MaLoai","MaQT","HoTen","GioiTinh","NgaySinh","Email","Anh","MatKhau"],[maLOAI,maQT,hoTen,gioiTinh,ngaySinh,email,anh,pass],maND);
        if(value)
            return res.json(ErrorServices("Updated successfully",0,''))
        return res.json(ErrorServices("Update has failed",-1,''))
     }
     //
    return res.json(ErrorServices("Email Exsist",-1,''))
}
//RemoveUser Middleware
const RemoveUser = async(req,res)=>{
    //get payload from body
    const maND = req.body.maND
    const value = await User.Delete(maND);
    if(value)
        return res.json(ErrorServices("Delete successfully",0,''))
   return res.json(ErrorServices("Deletion has failed",-1,''))
}
//Search By MAND OR TENND
const searchUsers = async(req,res) => {
    const maND =  req.query.maND;
    const tenND = req.query.tenND;
    const value = await User.searchUser([getParamSearch(maND),getParamSearch(tenND)])
    if(value)
        return res.json(ErrorServices("Search successfully",0,value))
    return res.json(ErrorServices("Search has failed",-1,''))
}
module.exports = {registerAPI,loginAPI,forgotPass,getUsers,UpdateUser,RemoveUser,searchUsers}