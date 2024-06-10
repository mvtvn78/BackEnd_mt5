const CMD = require("../mysql/Comand");
const {makeUniqueCode} = require('../services/CommonService')
// UserType class declaration 
class UserType 
{
    //#region Attr and constructor function
    constructor(){
        this.maLOAI = "";
        this.tenQUYEN = "";
        this.giaTRI = "";
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async  CreateNew(TenQuyen,GiaTri) {
        try {
            const MaLoai = makeUniqueCode("LOAI",200)
            let value = await CMD.insert("loaind",[MaLoai,TenQuyen,GiaTri]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("addUserType function has an error",err);
            return false
        }
    }
    //Update Method
    static async  Update(fields,values,code) {
        try {
            let value = await CMD.update("loaind",[...fields],[...values],["MaLoai"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("updateUserTypeByCode function has an error",err);
            return false
        }
    }
    //Delete Method
    static async  Delete(MaLoai) {
        try {
            let value = await CMD.delete("loaind",["MaLoai"],[MaLoai]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("deleteUserTypeByCode function has an error",err);
            return false
        }
    }
    //getUserTypeList Method
    static async  getUserTypeList()
    {
        try {
            let value = await CMD.select("loaind");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getUserTypeList function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = UserType