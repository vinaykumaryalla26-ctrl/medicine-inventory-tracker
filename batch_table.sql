CREATE TABLE batch (
    batch_id INT AUTO_INCREMENT PRIMARY KEY,
    medicine_id INT,
    supplier_id INT,
    batch_number VARCHAR(50),
    expiry_date DATE,
    quantity INT,
    purchase_date DATE,
    FOREIGN KEY (medicine_id) REFERENCES medicine(medicine_id),
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);
