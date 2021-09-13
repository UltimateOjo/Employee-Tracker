const express = require('express');
const db = require('./db/connection');
const inquirer = require('inquirer')

const PORT = process.env.PORT || 2021;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Start server after DB connection
db.connect(err => {
    if (err) throw err;
    console.log('Database connected.');
    app.listen(PORT, () => {
      console.log(`Server running on port ${PORT}`);
    });
  });

  inquirer
    .prompt([
        {
        type:'input',
        name:'first name',
        message:'What is your first name?',
        choices: []
        },
        
        {
        type:'input',
        name:'last name',
        message:'What is your last name?',
        choices: []
        },
        {
        type:'input',
        name:'id',
        message:'What is your id',
        choices: []
        },
        {
        type:'input',
        name:'title',
        message:'What is your title?',
        choices: []
        },
        {
        type:'input',
        name:'department',
        message:'What is your department?',
        choices: []
        },
        {
        type:'input',
        name:'salary',
        message:'What is your salary?',
        choices: []
        },
        {
        type:'input',
        name:'manager',
        message:'What is your manager?',
        choices: []
        }
  ])