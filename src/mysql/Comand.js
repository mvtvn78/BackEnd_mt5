const cmdMysql = require("../config/ConnectDB");
const {
  getInsertParamPlaceholders,
  getUpdateParamPlaceholders,
  getSelectParamPlaceholders,
  getSearchParamPlaceholders
} = require("../services/MySqlService");
class CMD {
  //select one
  static selectOne(table, fields, conditions) {
    const paramFields = getSelectParamPlaceholders(fields)
    const sql = `SELECT * FROM ${table} WHERE ${paramFields} LIMIT 1`;
    console.log("selct One >>>",sql);
    const values = [...conditions];
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, values,(err, rows) => {
          if (err instanceof Error) reject(err);
          resolve(rows);
        });
      });
  }
  // search 
  static search(table,fields,condtions)
  {
    const paramFileds  = getSearchParamPlaceholders(fields)
    const sql =`SELECT * FROM ${table} WHERE ${paramFileds}`
    console.log("Search >>",sql);
    return new Promise( (resolve,reject) => {
        cmdMysql.execute(sql,condtions,(err, rows) => {
          if (err instanceof Error) reject(err);
          resolve(rows);
        });
      });
  }
  //select
  static select(table) {
    const sql = `SELECT * FROM ${table}`;
    console.log("selct >>>",sql);
    return new Promise((resolve, reject) => {
      cmdMysql.execute(sql, (err, rows) => {
        if (err instanceof Error) reject(err);
        resolve(rows);
      });
    });
  }
  // insert
  static insert(table, values) {
    const param = getInsertParamPlaceholders(values);
    const sql = `INSERT INTO ${table} VALUES (${param})`;
    console.log("insert >>>",sql);
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, values,(err, result) => {
          if (err instanceof Error) reject(err);
          resolve(result);
        });
      });
  }
  //delete
  static delete(table, fields, values) {
    const paramUpdates = getSelectParamPlaceholders(fields);
    const sql = `DELETE FROM ${table} WHERE ${paramUpdates}`;
    console.log("delete >>>",sql);
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, [...values],(err, result) => {
          if (err instanceof Error) reject(err);
          resolve(result);
        });
      });
  }
  static update(table, fieldsU, valuesU, fileds, condtions) {
    const paramFields = getUpdateParamPlaceholders(fieldsU);
    const paramUpdates = getSelectParamPlaceholders(fileds);
    const sql = `UPDATE ${table} SET ${paramFields} WHERE ${paramUpdates} `;
    console.log("update >>>",sql);
    const values = [...valuesU, ...condtions];
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, values,(err, result) => {
          if (err instanceof Error) reject(err);
          resolve(result);
        });
    });
  }
}
module.exports = CMD;
