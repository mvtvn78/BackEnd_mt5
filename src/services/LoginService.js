const CMD = require("../mysql/Comand");
// CheckValidEmail Method
const CheckValidEmail = (email)=>{
    //regex
    let  pattern = /^[\w-\.]+@gmail.com$/;
    return pattern.test(email);
}
// CheckEmailExist Method
const CheckEmailExist =async(email) => {
    try {
        let value = await CMD.selectOne("nguoidung",["Email"],[email]);
        return value.length ? true : false
    }
    catch(err)
    {
        console.log("CheckEmailExist function has an error",err);
        return false
    }
}
// CheckUserExist Method
const CheckUserExist = async(email,password) => {
    try {
        let value = await CMD.selectOne("nguoidung",["Email","MatKhau"],[email,password]);
        if(value.length !=0)
            return value
        return null
    }
    catch(err)
    {
        console.log("CheckUserExist function has an error",err);
        return null
    }
}
// CheckUserExistByCode Method
const CheckUserExistByCode = async(code) => {
    try {
        let value = await CMD.selectOne("nguoidung",["MAND "],[code]);
        console.log(value);
        return value.length ? true : false
    }
    catch(err)
    {
        console.log("CheckUserExistByCode function has an error",err);
        return false
    }
}
// MakeUser Method
const MakeUser = async(MaQT ,HoTen,GioiTinh,NgaySinh,Email,MatKhau) => {
    try {
        //intial MAND
        let MAND = "ND" + Date.now() * (Math.random() * 100);
        MAND = MAND.slice(0,9)
        // intial tenND based on email
        let tenND = Email.slice(0,Email.indexOf('@'))
        tenND= tenND.slice(0,8)
        let value = await CMD.insert("nguoidung",[MAND,"LOAI2",MaQT,HoTen,GioiTinh,NgaySinh,Email,"default.jpg",tenND,MatKhau,new Date(),new Date()]);
        return value.length ? true : false
    }
    catch(err)
    {
        console.log("MakeUser function has an error",err);
        return false
    }
}
// UpdateUserByCode Method
const UpdateUserByCode = async(fields,values,code) => {
    try {
        let value = await CMD.update("nguoidung",[...fields,"ThoiGianSua"],[...values,new Date()],"MAND",code);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("UpdateUserByCode function has an error",err);
        return false
    }
}
//DeleteUserByCode Method
const DeleteUserByCode = async(code) => {
    try {
        let value = await CMD.delete("nguoidung","MAND",code);
        return value.affectedRows ? true : false
    }
    catch(err)
    {
        console.log("DeleteUserByCode function has an error",err);
        return false
    }
}
module.exports = {CheckValidEmail,CheckEmailExist,CheckUserExist,MakeUser,UpdateUserByCode,DeleteUserByCode}