//const dotenv = require('dotenv');
const express = require('express');
const app = express();
const PORT = 3001;
const mysql = require('mysql');

const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'your-p-word',
  database : 'book_shop'
});

connection.connect();

//let q = 'SELECT title FROM books';

//connection.query(q, function (err, rows, fields) {
  //if (err) throw err

  //console.log('The solution is: ', rows)
//})

//--------------------------------------------------------------------------
//var book = {
 //   title: 'this is a test',
//    author_fname: 'robert',
//    author_lname: 'hunnicutt',
//    released_year: 1997,
//    stock_quantity: 999,
//    pages: 111
//};
 
//var end_result = connection.query('INSERT INTO books SET ?', book, function(err, result) {
  //if (err) throw err;
  //console.log(result);
//});

//---------------------------------------------------------------------------

//var data = [];
//for(var i = 0; i < 5; i++){
//    data.push([
//        1 + i,
//        200 + i
//    ]);
//}
 
//var q = 'INSERT INTO books (title, pages) VALUES ?';
 
//connection.query(q, [data], function(err, result) {
//  console.log(err);
//  console.log(result);
// });

//-----------------------------------------------------------------------------

app.get("/", function(req, res){
    var q = 'SELECT COUNT(*) as count FROM users';
    connection.query(q, function (error, results) {
    if (error) throw error;
    var msg = "We have " + results[0].count + " users";
    res.send(msg);
    });
   });

connection.end()

app.get('/', (req, res) => res.send('Hello World h!'));

app.listen(PORT, () => console.log(`Example app listening on port: ${PORT}!`));