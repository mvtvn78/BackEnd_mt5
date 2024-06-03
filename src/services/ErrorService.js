const ErrorServices = (errmsg,errcode,res)=>{
    return {
        "ErrorMessage": errmsg,
        "ErrorCode" : errcode,
        "data": res
    }
}
module.exports = {ErrorServices}