SELECT m.medicine_name, SUM(b.quantity) AS available_stock
FROM medicine m
JOIN batch b ON m.medicine_id = b.medicine_id
GROUP BY m.medicine_name;
