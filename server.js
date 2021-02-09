const mysql = require('mysql');
const inquirer = require('inquirer');
const cTable = require('console.table');
const fs = require('fs')


var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'Employee_db'
});
 

connection.connect();



inquirer.prompt({

})