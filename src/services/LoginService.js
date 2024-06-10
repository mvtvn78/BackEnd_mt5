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

const getPassWordByEmail = async(email) => {
    try {
        let value = await CMD.selectOne("nguoidung",["Email"],[email]);
        return value.length ? value : null
    }
    catch(err)
    {
        console.log("CheckEmailExist function has an error",err);
        return null
    }
}
module.exports = {CheckValidEmail,
    CheckEmailExist,CheckUserExist,CheckUserExistByCode,getPassWordByEmail}