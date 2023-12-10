const express = require('express');
const mysql = require('mysql');

const app = express();
const PORT = 3000; // Choose your desired port number

// Create a MySQL connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'your_username',
  password: 'your_password',
  database: 'your_database_name'
});

// Connect to MySQL
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to database:', err);
    return;
  }
  console.log('Connected to database');
});

// Serve the index.html file
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

// Handle SignIn form submission
app.post('/signin', (req, res) => {
  // Retrieve credentials from the request body
  const { username, password } = req.body;

  // Query the database to check credentials (implement your query logic here)
  // Example query:
  const query = `SELECT * FROM users WHERE username='${username}' AND password='${password}'`;

  connection.query(query, (err, results) => {
    if (err) {
      console.error('Error executing query:', err);
      res.status(500).send('Error');
      return;
    }

    if (results.length > 0) {
      // Successful SignIn, redirect to welcome page or do something else
      res.send('Welcome!');
    } else {
      // Invalid credentials
      res.send('Invalid credentials');
    }
  });
});

// Handle SignUp form submission
app.post('/signup', (req, res) => {
  // Retrieve new credentials from the request body
  const { newUsername, newPassword } = req.body;

  // Insert new entry into the database (implement your query logic here)
  // Example query:
  const insertQuery = `INSERT INTO users (username, password) VALUES ('${newUsername}', '${newPassword}')`;

  connection.query(insertQuery, (err) => {
    if (err) {
      console.error('Error executing query:', err);
      res.status(500).send('Error');
      return;
    }

    // Successful SignUp, redirect to index.html or do something else
    res.redirect('/');
  });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
