const CMD = require("../mysql/Comand");
const {makeUniqueCode} = require('../services/CommonService')
// Album class declaration 
class Album 
{
    //#region Attr and constructor function
    constructor(){
        this.maALB = "";
        this.tenALB = "";
        this.tinhTrang = "";
        this.hinhAnh = "";
        this.mota ="";
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(TenALB,MoTa,HinhAnh) {
        try {
            const MAALB = makeUniqueCode("ALB",200)
            let value = await CMD.insert("album",[MAALB,TenALB,MoTa,HinhAnh,1]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's Album function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,code) {
        try {
            let value = await CMD.update("album",[...fields],[...values],["MAALB"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("update's Albumfunction has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(code) {
        try {
            let value = await CMD.delete("album",["MAALB"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's Albumfunction has an error",err);
            return false
        }
    }
    //getAlbumList Method
    static async getAlbumList()
    {
        try {
            let value = await CMD.select("album");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getAlbumList function has an error",err);
            return null
        }
    }
     //getArtistBY Method
     static async getAlbumBy(code)
     {
         try {
             let value = await CMD.selectOne("album",["MAALB"],[code]);
             if(value.length !=0)
                 return value
             return null
         }
         catch(err)
         {
             console.log("getAlbumBy function has an error",err);
             return null
         }
     }
     //searchAlbum
    static async searchAlbum(coditions)
    {
        try {
            let value = await CMD.search("album",["MAALB","TenALB"],coditions)
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
    
    //#endregion
}
module.exports = Album