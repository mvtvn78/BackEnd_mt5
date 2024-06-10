const CMD = require("../mysql/Comand");
// GenreSong class declaration 
class GenreSong 
{
    //#region Attr and constructor function
    constructor(){
        this.maTL = "";
        this.tenTL = "";
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MAT,TenTL) {
        try {
            let value = await CMD.insert("theloai",[MAT,TenTL]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's GenreSong function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,code) {
        try {
            let value = await CMD.update("theloai",[...fields],[...values],["MATL"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("update's GenreSong function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(MATL) {
        try {
            let value = await CMD.delete("theloai",["MATL"],[MATL]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's GenreSong function has an error",err);
            return false
        }
    }
    //getGenreSong Method
    static async getGenreSongList()
    {
        try {
            let value = await CMD.select("theloai");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getGenreSongList function has an error",err);
            return null
        }
    }
    //
     //searchReleaseSong
     static async searchGenreSong(coditions)
     {
         try {
             let value = await CMD.search("theloai",["MATL","TenTL"],coditions)
             if(value.length !=0)
                 return value
             return null
         }
         catch(err)
         {
             console.log("searchGenreSong function has an error",err);
             return null
         }
     }
    //#endregion
}
module.exports = GenreSong