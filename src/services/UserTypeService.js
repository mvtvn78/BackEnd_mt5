const CMD = require("../mysql/Comand")
//getUserTypeList Method
const getUserTypeList = async() => {
    try {
        let value = await CMD.select("loaind");
        if(value.length !=0)
            return value
        return null
    }
    catch(err)
    {
        console.log("getUserTypeList function has an error",err);
        return null
    }
}
//addUserType Method
const addUserType = async(MaLoai,TenQuyen,GiaTri) => {
    try {
        let value = await CMD.insert("loaind",[MaLoai,TenQuyen,GiaTri]);
        return value.length ? true : false
    }
    catch(err)
    {
        console.log("addUserType function has an error",err);
        return false
    }
}
// updateUserTypeByCode Method
const updateUserTypeByCode = async(fields,values,code) => {
    try {
        let value = await CMD.update("loaind",[...fields],[...values],"MaLoai",code);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("updateUserTypeByCode function has an error",err);
        return false
    }
}
// deleteUserTypeByCode Method
const deleteUserTypeByCode = async(MaLoai) => {
    try {
        let value = await CMD.delete("loaind","MaLoai",MaLoai);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("deleteUserTypeByCode function has an error",err);
        return false
    }
}
module.exports = {getUserTypeList,addUserType,updateUserTypeByCode,deleteUserTypeByCode}