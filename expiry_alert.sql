DELIMITER $$

CREATE PROCEDURE check_expiry_alert()
BEGIN
    INSERT INTO alerts (medicine_id, batch_id, alert_type, message)
    SELECT
        medicine_id,
        batch_id,
        'EXPIRY_ALERT',
        CONCAT('Medicine batch expiring on ', expiry_date)
    FROM batch
    WHERE expiry_date <= CURDATE() + INTERVAL 30 DAY;
END$$

DELIMITER ;


