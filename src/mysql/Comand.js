const cmdMysql = require("../config/ConnectDB");
const {
  getInsertParamPlaceholders,
  getUpdateParamPlaceholders,
  getSelectParamPlaceholders
} = require("../services/MySqlService");
class CMD {
  //select one
  static selectOne(table, fields, conditions) {
    const paramFields = getSelectParamPlaceholders(fields)
    const sql = `SELECT * FROM ${table} WHERE ${paramFields} LIMIT 1`;
    const values = [...conditions];
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, values,(err, rows) => {
          if (err instanceof Error) reject(err);
          resolve(rows);
        });
      });
  }
  //select
  static select(table) {
    const sql = `SELECT * FROM ${table}`;
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
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, values,(err, result) => {
          if (err instanceof Error) reject(err);
          resolve(result);
        });
      });
  }
  //delete
  static delete(table, field, value) {
    const sql = `DELETE FROM ${table} WHERE ${field} = ?`;
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, [value],(err, result) => {
          if (err instanceof Error) reject(err);
          resolve(result);
        });
      });
  }
  static update(table, fieldsU, valuesU, filed, condtion) {
    const param = getUpdateParamPlaceholders(fieldsU);
    const sql = `UPDATE ${table} SET ${param} WHERE ${filed} = ? `;
    const values = [...valuesU, condtion];
    return new Promise((resolve, reject) => {
        cmdMysql.execute(sql, values,(err, result) => {
          if (err instanceof Error) reject(err);
          resolve(result);
        });
    });
  }
}
module.exports = CMD;
