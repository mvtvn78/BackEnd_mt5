const CMD = require("../mysql/Comand");
// Nation class declaration 
class Nation 
{
    //#region Attr and constructor function
    constructor(maQT,tenQT,anh){
        this.maQT = maQT;
        this.tenQT = tenQT;
        this.anh = anh;
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MaQT,TenQT,Anh) {
        try {
            let value = await CMD.insert("quoctich",[MaQT,TenQT,Anh]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's Nation function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,code)  {
        try {
            let value = await CMD.update("quoctich",[...fields],[...values],["MaQT"],[code]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("Update's Nation function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(MaQT) {
        try {
            let value = await CMD.delete("quoctich",["MaQT"],[MaQT]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("Delete's Nation function has an error",err);
            return false
        }
    }
    //getNationList Method
    static async getNationList ()
    {
        try {
            let value = await CMD.select("quoctich");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getNationList function has an error",err);
            return null
        }
    }
    //searchNations
    static async searchNations(coditions)
    {
        try {
            let value = await CMD.search("quoctich",["MaQT","TenQT"],coditions)
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("searchNations function has an error",err);
            return null
        }
    }
     //
     static async getTotalArtistNations ()
     {
        try {
            let value = await CMD.excutebysql('SELECT COUNT(nghesi.MANS) as "Total",quoctich.MaQT,quoctich.TenQT FROM nghesi INNER JOIN quoctich ON nghesi.MaQT = quoctich.MaQT GROUP BY quoctich.MaQT , quoctich.TenQT;')
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getTotalArtistNations function has an error",err);
            return null
        }
     }
     //
     static async getTotalUsersNations ()
     {
        try {
            let value = await CMD.excutebysql('SELECT COUNT(nguoidung.MAND) as "Total",quoctich.MaQT,quoctich.TenQT FROM nguoidung INNER JOIN quoctich ON nguoidung.MaQT = quoctich.MaQT GROUP BY quoctich.MaQT , quoctich.TenQT;')
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getTotalUsersNations function has an error",err);
            return null
        }
     }
    //#endregion
}
module.exports = Nation