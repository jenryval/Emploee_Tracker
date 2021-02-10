const mysql = require('mysql');
const inquirer = require('inquirer');
const cTable = require('console.table');
const fs = require('fs')


var mysql      = require('mysql');
const { allowedNodeEnvironmentFlags } = require('process');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'Employee_db'
});
 

connection.connect(err => {
  if (err) throw err
  console.log(`connected to mysql on thread ${connection.threadId}`)
});




const employeeTracker = () =>
    inquirer.prompt(
  {
    type:"list",
    Name:"empolyee",
    message:"What would you like to do?",
    choices:['add departments', 'view departments', 'add empolyees', 'view employees', 'update employees', 'add roles', 'view roles']
  },
  
  ).then(response => { 
     if (response.employee === 'add departments') {
      addDepartment()
    } else if (response.employee === 'view departments') {
      viewDepartment()
    }else if (response.employee === 'add empolyees') {
      addEmployee()
    }else if (response.employee === 'view employees') {
      viewEmployee()
    }else if(response.employee === 'update employees') {
      updateEmployee()
    }else if (response.employee === 'add roles' ) {
      addRole()
    }else (response.employee === 'view roles') {
      viewRoles()
    };
    
  })
  
  const addDepartment()
  