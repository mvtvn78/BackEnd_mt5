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
     //searchFavSong
     static async searchFavSongByND(maND)
     {
         try {
             let value = await CMD.search("yeuthich",["MAND"],[maND])
             if(value.length !=0)
                 return value
             return null
         }
         catch(err)
         {
             console.log("searchAlbum function has an error",err);
             return null
         }
     }
     //
     //
    static async getFavListSongByCode (code)
    {
        try {
            const sql = `SELECT baihat.MABH,baihat.TenBH,baihat.NoiDung,baihat.Anh as "AnhBH",baihat.LoiBatHat,baihat.filenhac,nghesi.MANS,nghesi.TenNS,nghesi.Anh as "AnhNS" FROM yeuthich INNER JOIN baihat ON baihat.MABH = yeuthich.MABH INNER JOIN phathanh_bh on phathanh_bh.MABH = baihat.MABH INNER JOIN nghesi ON phathanh_bh.MANS = nghesi.MANS WHERE yeuthich.MAND = '${code}' ORDER BY yeuthich.ThoiGian DESC`
            console.log("CHECK >>> ",sql);
            let value = await CMD.excutebysql(sql)
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getFavListSongByCode function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = FavSong