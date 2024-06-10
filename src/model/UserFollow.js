const CMD = require("../mysql/Comand");
// UserFollow class declaration 
class UserFollow 
{
    //#region Attr and constructor function
    constructor(){
        this.maND = "";
        this.maNS = "";
        this.thoiGian = new Date();
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MAND  ,MANS  ,ThoiGian) {
        try {
            let value = await CMD.insert("theodoi",[MAND,MANS,ThoiGian]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's UserFollow  function has an error",err);
            return false
        }
    }

    //Delete Method
    static async Delete(conditions) {
        try {
            let value = await CMD.delete("theodoi",["MAND","MANS"],conditions );
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's UserFollow function has an error",err);
            return false
        }
    }
    //getUserFollowList Method
    static async getUserFollowList()
    {
        try {
            let value = await CMD.select("theodoi");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getFollowList function has an error",err);
            return null
        }
    }
    static async getUserFollowListBY(fields,condtions)
    {
        try {
            let value = await CMD.selectOne("theodoi",fields,condtions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getUserFollowListBY function has an error",err);
            return null
        }
    }
     //searchFollow
     static async searchFollow(coditions)
     {
         try {
             let value = await CMD.search("theodoi",["MAND","MANS"],coditions)
             if(value.length !=0)
                 return value
             return null
         }
         catch(err)
         {
             console.log("searchFollow function has an error",err);
             return null
         }
     }
    //#endregion
}
module.exports = UserFollow