const CMD = require("../mysql/Comand");
// ReleaseSong class declaration 
class ReleaseSong 
{
    //#region Attr and constructor function
    constructor(){
        this.maNS = "";
        this.maBH = "";
        this.thoiGian = new Date();
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MANS  ,MABH  ,ThoiGian) {
        try {
            //intial unique code
            let value = await CMD.insert("phathanh_bh",[MANS,MABH,ThoiGian]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's ReleaseSong function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,fieldsCon,conditions) {
        try {
            let value = await CMD.update("phathanh_bh",[...fields],[...values],fieldsCon,conditions);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("update's ReleaseSong function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(fieldsCon,conditions) {
        try {
            let value = await CMD.delete("phathanh_bh",fieldsCon,conditions);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's ReleaseSong function has an error",err);
            return false
        }
    }
    //getReleaseSongList Method
    static async getReleaseSongList()
    {
        try {
            let value = await CMD.select("phathanh_bh");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getReleaseSongList function has an error",err);
            return null
        }
    }
    //getReleaseSongBy Method
    static async getReleaseSongBy(fields,condtions)
    {
        try {
            let value = await CMD.selectOne("phathanh_bh",fields,condtions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getReleaseSongBy function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = ReleaseSong