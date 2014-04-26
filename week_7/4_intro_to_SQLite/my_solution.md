# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
    >CREATE TABLE users (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      first_name VARCHAR(64) NOT NULL,
      last_name  VARCHAR(64) NOT NULL,
      email VARCHAR(128) UNIQUE NOT NULL,
      created_at DATETIME NOT NULL,
      updated_at DATETIME NOT NULL
    );

## Release 1: Insert Data 

    >INSERT INTO users
        ...> (first_name, last_name, email, created_at, updated_at)
        ...> VALUES
        ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
    >SELECT * FROM users;

    id          first_name  last_name   email                  created_at           updated_at         
    ----------  ----------  ----------  ---------------------  -------------------  -------------------
    1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 02:36:25  2014-04-26 02:36:25
    >INSERT INTO users 
       ...> (first_name,last_name,email,created_at,updated_at)
       ...> VALUES
       ...> ('Kevin','Kang','kevinkang88@gmail.com',DATETIME('now'),DATETIME('now'));
    >SELECT * FROM users;
    id          first_name  last_name   email                  created_at           updated_at         
    ----------  ----------  ----------  ---------------------  -------------------  -------------------
    1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 02:36:25  2014-04-26 02:36:25
    2           Kevin       Kang        kevinkang88@gmail.com  2014-04-26 02:39:43  2014-04-26 02:39:43

## Release 2: Multi-line commands

    >INSERT INTO users
    ...> (first_name, last_name, email, created_at, updated_at)
    ...> VALUES
    ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
    Error: UNIQUE constraint failed: users.email

    >SELECT * FROM users;
    id          first_name  last_name   email                  created_at           updated_at         
    ----------  ----------  ----------  ---------------------  -------------------  -------------------
    1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 02:36:25  2014-04-26 02:36:25
    2           Kevin       Kang        kevinkang88@gmail.com  2014-04-26 02:39:43  2014-04-26 02:39:43

UNIQUE statement used when setting up email field in users table is giving us errors when it sees duplicate email 

## Release 3: Add a column

    >ALTER TABLE users ADD COLUMN nickname TEXT;
    >.schema users
    CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name VARCHAR(64) NOT NULL,
        last_name  VARCHAR(64) NOT NULL,
        email VARCHAR(128) UNIQUE NOT NULL,
        created_at DATETIME NOT NULL,
        updated_at DATETIME NOT NULL
        , nickname TEXT);
    > UPDATE users SET nickname='Kimchee' WHERE first_name = "Kimmey";
    > UPDATE users SET nickname='Kang Kong' WHERE first_name = "Kevin";
    > SELECT * FROM users;
      id          first_name  last_name   email                  created_at           updated_at           nickname  
      ----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
      1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 02:36:25  2014-04-26 02:36:25  Kimchee   
      2           Kevin       Kang        kevinkang88@gmail.com  2014-04-26 02:39:43  2014-04-26 02:39:43  Kang Kong 

## Release 4: Change a value
<!-- paste your terminal output here -->

## Release 5: Reflect
<!-- Add your reflection here -->