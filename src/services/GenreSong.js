const CMD = require("../mysql/Comand")
// getGenreSongList Method
const getGenreSongList = async() => {
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
// addGenreSong Method
const addGenreSong = async(MAT,TenTL) => {
    try {
        let value = await CMD.insert("theloai",[MAT,TenTL]);
        return value.length ? true : false
    }
    catch(err)
    {
        console.log("addGenreSong function has an error",err);
        return false
    }
}
// updateUserTypeByCode Method
const updateGenreSongByCode = async(fields,values,code) => {
    try {
        let value = await CMD.update("theloai",[...fields],[...values],"MATL",code);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("updateGenreSongByCode function has an error",err);
        return false
    }
}
// deleteUserTypeByCode Method
const deleteGenreSongByCode = async(MATL ) => {
    try {
        let value = await CMD.delete("theloai","MATL",MATL);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("deleteGenreSongByCode function has an error",err);
        return false
    }
}
module.exports = {getGenreSongList,addGenreSong,updateGenreSongByCode,deleteGenreSongByCode}