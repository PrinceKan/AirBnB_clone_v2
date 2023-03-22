-- Create the database if it doesn't already exist
-- Create the user if it doesn't already exist
-- Grant privileges to the user on the hbnb_test_db database
-- Grant SELECT privilege to the user on the performance_schema database

CREATE DATABASE IF NOT EXISTS hbnb_test_db;

CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
