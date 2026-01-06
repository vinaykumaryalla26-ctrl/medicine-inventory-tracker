UPDATE batch
SET quantity = quantity - 50
WHERE batch_id = 1;

INSERT INTO stock_transaction (batch_id, transaction_type, quantity, issued_to)
VALUES (1, 'ISSUE', 50, 'Emergency Patient');

SELECT * FROM alerts;
