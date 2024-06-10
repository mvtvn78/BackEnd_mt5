const CMD = require("../mysql/Comand");
// FavSong class declaration 
class FavSong 
{
    //#region Attr and constructor function
    constructor(){
        this.maND = "";
        this.maBH = "";
        this.thoiGian = new Date();
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MAND  ,MABH   ,ThoiGian) {
        try {
            let value = await CMD.insert("yeuthich",[MAND,MABH ,ThoiGian]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's FavSong function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(condtions) {
        try {
            let value = await CMD.delete("yeuthich",["MAND","MABH"],condtions );
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's FavSong  function has an error",err);
            return false
        }
    }
    //getFavList Method
    static async getFavList()
    {
        try {
            let value = await CMD.select("yeuthich");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getFavList function has an error",err);
            return null
        }
    }
    static async getFavListBy(fields,conditions)
    {
        try {
            let value = await CMD.selectOne("yeuthich",fields,conditions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getFavListBy function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = FavSong