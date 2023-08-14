//  establishes the connection to the database
const mysql = require("mysql2");
// Sets up the connection to mySQL
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "91129789",
  database: "business_db",
});

connection.connect(function (err) {
  if (err) throw err;
});
// Exports the connection for use in other files
module.exports = connection;
