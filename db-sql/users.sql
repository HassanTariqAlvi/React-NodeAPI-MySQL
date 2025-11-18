-- Drop table if already exists
DROP TABLE IF EXISTS users;

-- Create users table with id as AUTO_INCREMENT PRIMARY KEY
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  work VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert dummy data
INSERT INTO users (name, email, work) VALUES
('John Doe', 'john@example.com', 'Engineer'),
('Alice Smith', 'alice@example.com', 'Designer');
