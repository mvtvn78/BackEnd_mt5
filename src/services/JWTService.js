const jwt = require('jsonwebtoken');
require('dotenv').config() 
const key = process.env.KEY_JWT 
// hashTokenByValue method
const hashTokenByValue  = (value) => {
    try {
        const token = jwt.sign(value, key, { expiresIn: '1h' });
        return token
    }
    catch(err) {
        console.log("hashTokenByValue function has an error",err);
        return ""
    }
}
// getValueByToken method
const getValueByToken = (token) => {
    try {
        const decoded = jwt.verify(token, key);
        return decoded
    }
    catch(err) {
        console.log("getValueByToken function has an error",err);
        return ""
    }
}
module.exports = {hashTokenByValue,getValueByToken}