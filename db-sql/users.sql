-- Drop table if already exists (prevents conflicts)
DROP TABLE IF EXISTS users;

-- Create users table
CREATE TABLE users (
  id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  work VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Add primary key and AUTO_INCREMENT
ALTER TABLE users
  ADD PRIMARY KEY (id),
  MODIFY id INT NOT NULL AUTO_INCREMENT;

-- Insert dummy data
INSERT INTO users (name, email, work) VALUES
('John Doe', 'john@example.com', 'Engineer'),
('Alice Smith', 'alice@example.com', 'Designer');
