const fs = require("fs");
const inquirer = require("inquirer");
const cTable = require("console.table");

const mysql = require("mysql");
const { table } = require("console");

function startScreen() {
  inquirer
    .prompt([
      {
        type: "list",
        message: "Would you like to do?",
        name: "choice",
        choices: [
          "View All Employees?",
          "View All Employee's By Roles?",
          "View all Employees By Departments",
          "Update Employee",
          "Add Employee?",
          "Add Role?",
          "Add Department?",
          "Quit",
        ],
      },
    ])
    .then(function (result) {
      switch (result.choice) {
        case "View All Employees":
          viewAllEmployees();
          break;

        case "View All Employees by Roles":
          viewAllEmployeesByRoles();
          break;

        case "View All Employees by Departments":
          viewAllEmployeesByDepartments();
          break;

        case "Update Employee":
          updateEmployee();
          break;

        case "Add Employee":
          addEmployee();
          break;

        case "Add Role":
          addRole();
          break;

        case "Add Department":
          addDepartment();
          break;

        case "Quit":
          quit();
          break;
      }
    });
}

// Function calls ----------------------------------------------------------------

function viewAllEmployees() {
  connection.query("SELECT * FROM employee", function (err, res) {
    if (err) throw err;
    console.table(res);
    startScreen();
  });
}

function viewAllEmployeesByRoles() {
  connection.query("SELECT * FROM role", function (err, res) {
    if (err) throw err;
    console.table(res);
    startScreen();
  });
}

function viewAllEmployeesByDepartments() {
  connection.query("SELECT * FROM department", function (err, res) {
    if (err) throw err;
    console.table(res);
    startScreen();
  });
}

function updateEmployee() {
  inquirer
    .prompt([
      {
        type: "input",
        message: "Which employee would you like to update?",
        name: "employeeUpdate",
      },
      {
        type: "input",
        message: "What do you want to update their role to?",
        name: "updateERole",
      },
    ])
    .then(function (answer) {
      connection.query(
        "UPDATE employee SET role_id=? WHERE first_name= ?",
        [answer.updateERole, answer.employeeUpdate],
        function (err, res) {
          if (err) throw err;
          console.log(res);
        }
      );
    });
}

function addEmployee() {
  inquirer
    .prompt([
      {
        type: "input",
        message: "What is the employees first name?",
        name: "aeFirstName",
      },
      {
        type: "input",
        message: "What is the employees last name?",
        name: "aeLastName",
      },
      {
        type: "input",
        message: "What is the employee's id number?",
        name: "aeId",
      },
      {
        type: "input",
        message: "What is the employee's manager id number?",
        name: "aeManagerId",
      },
    ])
    .then(function (answer) {
      connection.query("SELECT FROM ");
    });
}

// function quit(){
//     connection.end();
//     process.exit();
// }
