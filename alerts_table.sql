CREATE TABLE alerts (
    alert_id INT AUTO_INCREMENT PRIMARY KEY,
    medicine_id INT,
    batch_id INT,
    alert_type VARCHAR(50),
    message VARCHAR(255),
    alert_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('NEW','ACKNOWLEDGED') DEFAULT 'NEW'
);
