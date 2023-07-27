CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT
);

-- Insert sample data into the "products" table
INSERT INTO products (id, name, price, quantity)
VALUES
    (1, 'Widget A', 19.99, 100),
    (2, 'Widget B', 24.99, 75),
    (3, 'Widget C', 34.99, 50),
    (4, 'Widget D', 14.99, 120);
