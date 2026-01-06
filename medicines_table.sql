CREATE TABLE medicine (
    medicine_id INT AUTO_INCREMENT PRIMARY KEY,
    medicine_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    min_quantity INT DEFAULT 10
);
