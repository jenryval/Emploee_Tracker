var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "employees_db",
  });

module.exports = connection;