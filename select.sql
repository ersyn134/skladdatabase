-- 1. 
SELECT p.product_name, SUM(d.quantity) AS total_quantity
FROM deliveries d
JOIN products p ON d.product_id = p.product_id
WHERE d.warehouse_id = 1
    AND d.delivery_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name
ORDER BY p.product_name;

-- 2. 
SELECT p.product_name, SUM(w.quantity) AS total_quantity
FROM withdrawals w
JOIN products p ON w.product_id = p.product_id
WHERE w.warehouse_id = 2
    AND w.withdrawal_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name
ORDER BY p.product_name;

-- 3. 
SELECT c.category_name, SUM(d.quantity) AS total_quantity
FROM deliveries d
JOIN products p ON d.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
WHERE d.warehouse_id = 2
    AND d.delivery_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY c.category_name
ORDER BY c.category_name;

-- 4. 
SELECT COALESCE(b.brand_name, 'Без бренда') AS brand, SUM(d.quantity) AS total_quantity
FROM deliveries d
JOIN products p ON d.product_id = p.product_id
LEFT JOIN brands b ON p.brand_id = b.brand_id
WHERE d.warehouse_id = 1
    AND d.delivery_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY brand
ORDER BY brand;

-- 5. 
SELECT p.product_name, 
             COALESCE(SUM(d.quantity), 0) - COALESCE(SUM(w.quantity), 0) - COALESCE(SUM(t.quantity), 0) AS remaining_quantity
FROM products p
LEFT JOIN deliveries d ON p.product_id = d.product_id AND d.warehouse_id = 1
LEFT JOIN withdrawals w ON p.product_id = w.product_id AND w.warehouse_id = 1
LEFT JOIN transfers t ON p.product_id = t.product_id AND (t.from_warehouse_id = 1 OR t.to_warehouse_id = 1)
WHERE (d.delivery_date <= '2024-12-31' OR w.withdrawal_date <= '2024-12-31' OR t.transfer_date <= '2024-12-31')
GROUP BY p.product_name
ORDER BY p.product_name;

-- 6. 
SELECT p.product_name, SUM(d.quantity) AS total_quantity
FROM deliveries d
JOIN products p ON d.product_id = p.product_id
WHERE d.contractor_id = 2
    AND d.delivery_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name
ORDER BY p.product_name;

-- 7. 
SELECT p.product_name, SUM(d.quantity) AS total_quantity
FROM deliveries d
JOIN products p ON d.product_id = p.product_id
WHERE d.contractor_id = 1
    AND d.warehouse_id = 1
    AND d.delivery_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name
ORDER BY p.product_name;

-- 8. 
SELECT p.product_name, SUM(w.quantity) AS total_quantity
FROM withdrawals w
JOIN products p ON w.product_id = p.product_id
WHERE w.contractor_id = 1
    AND w.warehouse_id = 1
    AND w.withdrawal_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name
ORDER BY p.product_name;

-- 9. 
SELECT c.contractor_name, SUM(d.quantity) AS total_quantity
FROM deliveries d
JOIN contractors c ON d.contractor_id = c.contractor_id
WHERE d.product_id = 1
    AND d.delivery_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY c.contractor_name
ORDER BY total_quantity DESC;

-- 10. T
SELECT c.contractor_name, SUM(w.quantity) AS total_quantity
FROM withdrawals w
JOIN contractors c ON w.contractor_id = c.contractor_id
WHERE w.product_id = 1
    AND w.withdrawal_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY c.contractor_name
ORDER BY total_quantity DESC;

-- 11. 
SELECT p.product_name, SUM(t.quantity) AS total_quantity
FROM transfers t
JOIN products p ON t.product_id = p.product_id
WHERE t.to_warehouse_id = 1
    AND t.transfer_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name
ORDER BY p.product_name;

-- 12. 
SELECT p.product_name, SUM(t.quantity) AS total_quantity
FROM transfers t
JOIN products p ON t.product_id = p.product_id
WHERE t.from_warehouse_id = 1
    AND t.transfer_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name
ORDER BY p.product_name;
