DELIMITER $$

CREATE TRIGGER trg_low_stock
AFTER INSERT ON stock_transaction
FOR EACH ROW
BEGIN
    DECLARE total_stock INT;
    DECLARE min_qty INT;
    DECLARE med_id INT;

    IF NEW.transaction_type = 'ISSUE' THEN
        SELECT medicine_id INTO med_id
        FROM batch
        WHERE batch_id = NEW.batch_id;

        SELECT SUM(quantity) INTO total_stock
        FROM batch
        WHERE medicine_id = med_id;

        SELECT min_quantity INTO min_qty
        FROM medicine
        WHERE medicine_id = med_id;

        IF total_stock < min_qty THEN
            INSERT INTO alerts (medicine_id, batch_id, alert_type, message)
            VALUES (
                med_id,
                NEW.batch_id,
                'LOW_STOCK',
                CONCAT('Low stock alert! Available quantity: ', total_stock)
            );
        END IF;
    END IF;
END$$

DELIMITER ;
