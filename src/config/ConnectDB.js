// Get the client
const mysql = require('mysql2');
require('dotenv').config() 
// Create the connection to database
const _host = process.env.HOST_MYSQL
const _user = process.env.USER_MYSQL
const _database = process.env.DATABASE_MYSQL
const connection =  mysql.createConnection({
  host:_host,
  user:  _user,
  database: _database,
});
module.exports = connection