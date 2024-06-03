const CMD = require("../mysql/Comand")
// getAlbumList Method
const getAlbumList = async() => {
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
// addAlbum Method
const addAlbum = async(MAALB,TenALB,MoTa,HinhAnh) => {
    try {
        let value = await CMD.insert("album",[MAALB,TenALB,MoTa,HinhAnh]);
        return value.length ? true : false
    }
    catch(err)
    {
        console.log("addAlbum function has an error",err);
        return false
    }
}
// updateAlbumByCode Method
const updateAlbumByCode = async(fields,values,code) => {
    try {
        let value = await CMD.update("album",[...fields],[...values],"MAALB",code);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("updateAlbumByCode function has an error",err);
        return false
    }
}
// deleteAlbumByCode Method
const deleteAlbumByCode = async(code ) => {
    try {
        let value = await CMD.delete("album","MAALB",code);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("deleteAlbumByCode function has an error",err);
        return false
    }
}
module.exports = {getAlbumList,addAlbum,updateAlbumByCode,deleteAlbumByCode}