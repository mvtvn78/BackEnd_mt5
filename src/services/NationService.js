const CMD = require("../mysql/Comand")
//getNationList Method
const getNationList = async() => {
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
//getNationList Method
const addNation = async(MaQT,TenQT,Anh) => {
    try {
        let value = await CMD.insert("quoctich",[MaQT,TenQT,Anh]);
        return value.length ? true : false
    }
    catch(err)
    {
        console.log("addNation function has an error",err);
        return false
    }
}
// UpdateUserByCode Method
const updateNationByCode = async(fields,values,code) => {
    try {
        let value = await CMD.update("quoctich",[...fields],[...values],"MaQT",code);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("updateNationByCode function has an error",err);
        return false
    }
}
//deleteNationByCode Method
const deleteNationByCode = async(MaQT) => {
    try {
        let value = await CMD.delete("quoctich","MaQT",MaQT);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("deleteNationByCode function has an error",err);
        return false
    }
}
module.exports = {getNationList,addNation,deleteNationByCode,updateNationByCode}