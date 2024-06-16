const CMD = require("../mysql/Comand");
const {makeUniqueCode} = require('../services/CommonService')
// Artist class declaration 
class Artist 
{
    //#region Attr and constructor function
    constructor(){
        this.maNS = "";
        this.maQT = "";
        this.tenNS = "";
        this.anh = "";
        this.gioiTinh = 1;
        this.ngaySinh = new Date()
        this.mota ="";
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async  CreateNew(MaQT ,TenNS,Anh,GioiTinh,NgaySinh,MoTa) {
        try {
            //intial unique code
            const MANS = makeUniqueCode("NS",69);
            let value = await CMD.insert("nghesi",[MANS,MaQT,TenNS,Anh,GioiTinh,NgaySinh,MoTa]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's Artist function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,code) {
        try {
            let value = await CMD.update("nghesi",[...fields],[...values],["MANS"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("update's Artist function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(code) {
        try {
            let value = await CMD.delete("nghesi",["MANS"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's Artist function has an error",err);
            return false
        }
    }
    //getArtistList Method
    static async getArtistList()
    {
        try {
            let value = await CMD.select("nghesi");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getArtistList function has an error",err);
            return null
        }
    }
    //getArtistBY Method
    static async getArtistBY(fields,coditions)
    {
        try {
            let value = await CMD.selectOne("nghesi",fields,coditions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getArtistBY function has an error",err);
            return null
        }
    }
    //searchArtist
    static async searchArtist(coditions)
    {
        try {
            let value = await CMD.search("nghesi",["MANS","TenNS"],coditions)
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("searchArtist function has an error",err);
            return null
        }
    }
    //
    static async getTotalArtists()
    {
        try {
            let value = await CMD.excutebysql('SELECT COUNT(*)  as "Total" FROM nghesi')
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getTotalArtists function has an error",err);
            return null
        }
    }
    //#endregion
}
module.exports = Artist