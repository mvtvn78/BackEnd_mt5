const makeUniqueCode= (first,valueRan) => {
    try {
        let code = first + Date.now() * (Math.random() * valueRan);
        code = code.slice(0,9)
        return code
    }
    catch (err)
    {
        console.log("makeUniqueCode function has an error",err);
        return null;
    }
}
module.exports = {makeUniqueCode}