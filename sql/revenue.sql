-- =====================================
-- REVENUE ANALYSIS
-- =====================================

-- Total revenue
SELECT SUM(payment_value) AS total_revenue
FROM order_payments;

-- Revenue by month
SELECT 
    DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
    SUM(op.payment_value) AS revenue
FROM orders o
JOIN order_payments op ON o.order_id = op.order_id
GROUP BY month
ORDER BY month;

-- Average order value (AOV)
SELECT 
    SUM(payment_value) / COUNT(DISTINCT order_id) AS avg_order_value
FROM order_payments;
