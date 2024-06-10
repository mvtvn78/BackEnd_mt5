const CMD = require("../mysql/Comand");
// ReleaseALB class declaration 
class ReleaseALB 
{
    //#region Attr and constructor function
    constructor(){
        this.maNS = "";
        this.maALB = "";
        this.thoiGian = new Date();
    }
    //#endregion

    //#region Method

    //CreateNew Method
    static async CreateNew(MANS  ,MAALB ,ThoiGian) {
        try {
            //intial unique code
            let value = await CMD.insert("phathanh_alb",[MANS,MAALB,ThoiGian]);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("CreateNew's ReleaseALB function has an error",err);
            return false
        }
    }
    //Update Method
    static async Update(fields,values,fieldsCon,conditions) {
        try {
            let value = await CMD.update("phathanh_alb",[...fields],[...values],fieldsCon,conditions);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("update's ReleaseALB function has an error",err);
            return false
        }
    }
    //Delete Method
    static async Delete(fields,conditions) {
        try {

            let value = await CMD.delete("phathanh_alb",fields,conditions);
            return value.affectedRows ? true : false
        }
        catch(err)
        {
            console.log("delete's ReleaseALB function has an error",err);
            return false
        }
    }
    //getReleaseALBList Method
    static async getReleaseALBList()
    {
        try {
            let value = await CMD.select("phathanh_alb");
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getReleaseAlbList function has an error",err);
            return null
        }
    }
    // getReleaseBY
    static async getReleaseBY(fields,condtions)
    {
        try {
            let value = await CMD.selectOne("phathanh_alb",fields,condtions);
            if(value.length !=0)
                return value
            return null
        }
        catch(err)
        {
            console.log("getReleaseBY function has an error",err);
            return null
        }
    }
      //searchReleaseALB
      static async searchReleaseALB(coditions)
      {
          try {
              let value = await CMD.search("phathanh_alb",["MANS","MAALB"],coditions)
              if(value.length !=0)
                  return value
              return null
          }
          catch(err)
          {
              console.log("searchReleaseALB function has an error",err);
              return null
          }
      }
    //#endregion
}
module.exports = ReleaseALB