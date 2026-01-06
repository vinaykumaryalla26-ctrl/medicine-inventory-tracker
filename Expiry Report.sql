SELECT m.medicine_name, b.batch_number, b.expiry_date
FROM batch b
JOIN medicine m ON b.medicine_id = m.medicine_id
WHERE b.expiry_date <= CURDATE() + INTERVAL 30 DAY;
