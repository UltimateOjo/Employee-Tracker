const express = require('express');
const db = require('./db/connection');
const inquirer = require('inquirer')
const prompt = require('prompt-sync')();

var data = 'SELECT * FROM employee INNER JOIN employee_role ON employee.role_id = employee_role.role_id'

db.query(data, (err,rows) => {
  //if(err) throw err;
  
  console.log('Data received from Db:');
  console.log(rows);
});

function input() {
  var option = prompt("Select: create\nupdate\ndelete");
  if (option === 'create') {
    var f = prompt("first name:");
    var l = prompt("last name:");
    var m = prompt("manager:");
    var t = prompt("title:");
    var s = prompt("salary:");
    var d = prompt("department:");
    var r = prompt("role id:");

    const into = { first_name: f , last_name: l , manager: m , title: t , salary: s , department_id: d , role_id: r };
    db.query('INSERT INTO employee SET ?', into, (err, res) => {
      //if(err) throw err;
      console.log(into);
    });
  }
  else if (option === 'update') {
    var identity = prompt('id:');
    var sal = prompt("salary:");
    var updated = {salary: sal, role_id: identity};
    db.query('UPDATE employee SET salary = ? Where ID = ?', updated, (err, res) => {
        console.log(updated);
      });
  }
  else if (option === 'delete') {
    var num = prompt("delete employee by id:");
    var real = {role_id: num}
    db.query(
      'DELETE FROM authors WHERE id = ?', real, (err, result) => {
        console.log(`Deleted`);
      }
    );
  }

  else {
    console.log('Invalid response');
    input()
  }
}

input()