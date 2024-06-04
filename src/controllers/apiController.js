const {ErrorServices} = require("../services/ErrorService")
const {CheckValidEmail,CheckUserExist,
    CheckEmailExist,MakeUser,getPassWordByEmail} = require("../services/LoginService")
const {getNationList} = require("../services/NationService")
const {sendMailCreateSuccess,sendPassByEmail} = require("../services/EmailService")
const { hashTokenByValue,getValueByToken } = require("../services/JWTService")
// getNations Middleware
const getNations = async(req,res)=>{
        try {
            const value =  await getNationList();
            console.log(req.cookies);
            if(!value)
            {
                res.json(
                    ErrorServices('An error occurred',-1,'')
                )
                return;
            }
            res.json(
                ErrorServices('Retrieve country information successfully',0,value)
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
        res.json(ErrorServices("Invalid Email",-1,''))
        return;
    }
    //Check Exist Email
    if(await CheckEmailExist(email))
    {
        res.json(ErrorServices("Email Already Exists",-1,''))
        return;
    }
    const checkstage1 = await MakeUser(maQT,hoTen,gioiTinh,ngaySinh,email,pass)
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
        res.json(ErrorServices("Invalid Email",-1,''))
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
        const value = await getPassWordByEmail(email);
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
        res.json(ErrorServices("Invalid Email",-1,''))
    }
}
module.exports = {getNations,registerAPI,loginAPI,forgotPass}