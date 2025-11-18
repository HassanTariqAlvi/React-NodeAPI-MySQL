-- Create database if needed
CREATE DATABASE IF NOT EXISTS app-db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE app-db;

-- Drop table if already exists (prevents conflicts)
DROP TABLE IF EXISTS users;

-- Create users table
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  work VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert dummy data
INSERT INTO users (name, email, work) VALUES
('John Doe', 'john@example.com', 'Engineer'),
('Alice Smith', 'alice@example.com', 'Designer');
