const CMD = require("../mysql/Comand");
const {makeUniqueCode}= require("../services/CommonService")
const { hashTokenByValue,getValueByToken } = require("../services/JWTService")
require('dotenv').config() 
// User class declaration 
class User 
{
    //#region Attr and constructor function
    constructor(){
        this.maND = "";
        this.maLOAI = "";
        this.maQT = "";
        this.hoTEN = "";
        this.gTINH = 1;
        this.ngaySINH = new Date();
        this.email = "";
        this.anh = "";
        this.tenND ="";
        this.matKhau ="";
        this.tgTao = new Date();
        this.tgSua = new Date();
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MaQT ,HoTen,GioiTinh,NgaySinh,Email,MatKhau) {
        try {
            //intial MAND
            const MAND = makeUniqueCode("ND",100);
            // intial tenND based on email
            let tenND = Email.slice(0,Email.indexOf('@'))
            tenND= tenND.slice(0,8)
            // upload image
            let value = await CMD.insert("nguoidung",[MAND,"LOAI2",MaQT,HoTen,GioiTinh,NgaySinh,Email,"default.jpg",tenND,MatKhau,new Date(),new Date()]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's User function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,code) {
        try {
            let value = await CMD.update("nguoidung",[...fields,"ThoiGianSua"],[...values,new Date()],["MAND"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("Update's User function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(code) {
        try {
            let value = await CMD.delete("nguoidung",["MAND"],[code]);
            console.log(value);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("Delete's User function has an error",err);
            return false
        }
    }
    //getUserList Method
    static async getUserList()
    {
        try {
            let value = await CMD.select("nguoidung");
            
            if(value.length !=0)
            {
                return value
            }
            return null
        }
        catch(err)
        {
            console.log("getUserList function has an error",err);
            return null
        }
    }
    //getUserBy Method
    static async getUserBy(fields,coditions)
    {
        try {
            let value = await CMD.selectOne("nguoidung",fields,coditions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getUserBy function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = User