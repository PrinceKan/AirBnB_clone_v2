-- Create the database if it doesn't already exist
-- Create the user if it doesn't already exist
-- Grant privileges to the user on the hbnb_dev_db database
-- Grant SELECT privilege to the user on the performance_schema database

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
