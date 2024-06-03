const CMD = require("../mysql/Comand")
const {ErrorServices} = require("../services/ErrorService")
const {CheckValidEmail,CheckUserExist} = require("../services/LoginService")
// TestApi Middleware
const TestApi = async(req,res)=>{
        try {
            const value =  await CMD.update("loaind",["TenQuyen","GiaTri"],["Test1",3],"MaLoai","LOAI4")
            res.json(
                ErrorServices('',0,value)
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
    
}
// loginAPI Middleware
const loginAPI = async (req,res) => {
    let email = req.body.email
    let pass = req.body.pass
    let checkstage1 = await CheckUserExist(email,pass)
    console.log(checkstage1);
    if(checkstage1)
        res.json(ErrorServices("Logged in successfully",0,checkstage1))
    else 
    {
        res.json(ErrorServices("Login failed",-1,''))
    }
}
module.exports = {TestApi,registerAPI,loginAPI}