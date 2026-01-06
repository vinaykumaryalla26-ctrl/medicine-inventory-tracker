SELECT m.medicine_name, SUM(b.quantity) AS stock, m.min_quantity
FROM medicine m
JOIN batch b ON m.medicine_id = b.medicine_id
GROUP BY m.medicine_name, m.min_quantity
HAVING stock < m.min_quantity;
