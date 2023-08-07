CREATE TABLE services (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

INSERT INTO services (id, name, age, email)
VALUES
    (1, 'John Doe', 30, 'john@example.com'),
    (2, 'Jane Smith', 25, 'jane@example.com'),
    (3, 'Bob Johnson', 28, 'bob@example.com');
