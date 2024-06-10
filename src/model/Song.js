const CMD = require("../mysql/Comand");
const {makeUniqueCode} = require('../services/CommonService')
// Song class declaration 
class Song 
{
    //#region Attr and constructor function
    constructor(){
        this.maBH = "";
        this.maALB = "";
        this.maTL = "";
        this.tenBH = "";
        this.tinhTrang = 1;
        this.noiDUNG ="";
        this.anh ="";
        this.luotXem =0;
        this.loiBH ="";
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MAALB  ,MATL ,TenBH,TinhTrang,NoiDung,Anh,LuotXem,LoiBatHat) {
        try {
            //intial unique code
            const MABH  = makeUniqueCode("BH",169);
            let value = await CMD.insert("baihat",[MABH,MAALB,MATL,TenBH,TinhTrang,NoiDung,Anh,LuotXem,LoiBatHat]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's Song function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,code) {
        try {
            let value = await CMD.update("baihat",[...fields],[...values],"MABH",code);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("update's Song function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(code) {
        try {
            let value = await CMD.delete("baihat","MABH",code);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's Song function has an error",err);
            return false
        }
    }
    //getSongList Method
    static async getSongList()
    {
        try {
            let value = await CMD.select("baihat");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getSongList function has an error",err);
            return null
        }
    }
    //getSongBy Method
    static async getSongBy(field,condtions)
    {
        try {
            let value = await CMD.selectOne("baihat",field,condtions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getSongBy function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = Song