CREATE TABLE stock_transaction (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    batch_id INT,
    transaction_type ENUM('RECEIVE','ISSUE'),
    quantity INT,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    issued_to VARCHAR(100),
    FOREIGN KEY (batch_id) REFERENCES batch(batch_id)
);
