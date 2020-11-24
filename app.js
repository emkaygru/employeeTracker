const fs = require('fs');
const inquirer = require('inquirer');
const cTable = require('console.table');
const faker = require('faker');
const mysql = require('mysql');



function drePrompts(){

    inquirer.prompt([
        {
            type: 'confirm',
            message: 'Would you like to add a new department?',
            name: 'dChoice',
            // if user chooses "true" then ask questions about updating the department, and deleting department 
           
        },
        {
            type: 'confirm',
            message: 'Would you like to add a new role?',
            name: 'rChoice'
             // if user chooses "true" then ask questions about updating the role, and deleting role 
        },
        {
            type: 'confirm',
            message: 'Would you like to add a new employee?',
            name: 'eChoice'
             // if user chooses "true" then ask questions about updating the employee, and deleting employee 
        }

    ]);


};