const getInsertParamPlaceholders = (arr) => {
    let temp =''
    for(let i = 0 ;i<arr.length;++i)
    {
      temp+= "?,"
    }
    //ignore last character
    temp = temp.slice(0,-1);
    return temp;
}
const getUpdateParamPlaceholders = (arr) => {
    let temp =''
    for(let i = 0 ;i<arr.length;++i)
    {
      temp+= `${arr[i]} = ? ,`
    }
    //ignore last character
    temp = temp.slice(0,-1);
    return temp;
}
const getSelectParamPlaceholders = (arr) => {
  let temp =''
    for(let i = 0 ;i<arr.length;++i)
    {
      temp+= `${arr[i]} = ? AND `
    }
    // ignore 3 elements last 
    temp = temp.slice(0,-4);
    return temp
}
const getSearchParamPlaceholders = (arr) => {
  let temp = ''
  for (let i = 0; i < arr.length; ++i) {
    temp += `( ${arr[i]} LIKE ? ) OR `
  }
  // ignore 3 elements last 
  temp = temp.slice(0, -4);
  return temp
}
module.exports = {getInsertParamPlaceholders,getUpdateParamPlaceholders,getSearchParamPlaceholders,getSelectParamPlaceholders}