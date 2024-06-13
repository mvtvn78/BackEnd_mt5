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
    static async ChangeTime(MABH,MAND)
    {
        try {
            let value = await CMD.update("nghenhac",["ThoiGian"],[new Date()],["MAND","MABH"],[MAND,MABH])
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("ChangeTime function has an error",err);
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
    //searchListenedSong
    static async searchListenedSong(coditions)
    {
        try {
            let value = await CMD.search("nghenhac",["MAND","MABH"],coditions)
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("searchListenedSong function has an error",err);
            return null
        }
    }
    //
    static async getListendSongDetailByUserCode (code)
    {
        try {
            const sql = `SELECT baihat.MABH,baihat.Anh as 'AnhBH',baihat.NoiDung,baihat.TenBH,baihat.LoiBatHat,baihat.filenhac,nghesi.MANS,nghesi.TenNS,nghesi.Anh as "AnhNS",nghenhac.ThoiGian FROM baihat INNER JOIN nghenhac ON nghenhac.MABH = baihat.MABH INNER JOIN phathanh_bh ON baihat.MABH = phathanh_bh.MABH INNER JOIN nghesi ON nghesi.MANS = phathanh_bh.MANS where nghenhac.MAND ='${code}' ORDER BY nghenhac.ThoiGian DESC LIMIT 5;`
            console.log("CHECK >>> ",sql);
            let value = await CMD.excutebysql(sql)
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getListendSongDetailByUserCode function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = ListenedSong