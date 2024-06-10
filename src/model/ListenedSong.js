const CMD = require("../mysql/Comand");
// ListenedSong class declaration 
class ListenedSong 
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
    static async CreateNew(MABH ,MAND ,ThoiGian) {
        try {
            let value = await CMD.insert("nghenhac",[MABH,MAND,ThoiGian]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("addListenedSong function has an error",err);
            return false
        }
    }
    //getListenedSongList Method
    static async getListenedSongList()
    {
        try {
            let value = await CMD.select("nghenhac");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getListenedSongList function has an error",err);
            return null
        }
    }
    static async getListenedSongListBy(fields,conditions)
    {
        try {
            let value = await CMD.selectOne("nghenhac",fields,conditions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getListenedSongListBy function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = ListenedSong