-- =====================================
-- CUSTOMERS ANALYSIS
-- =====================================

-- Total unique customers
SELECT 
    COUNT(DISTINCT customer_unique_id) AS total_customers
FROM customers;


-- New vs Returning customers
WITH customer_orders AS (
    SELECT 
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT 
    CASE 
        WHEN total_orders = 1 THEN 'new'
        ELSE 'returning'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM customer_orders
GROUP BY customer_type;


-- Customer retention rate (% of returning customers)
WITH customer_orders AS (
    SELECT 
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT 
    ROUND(
        100.0 * SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS retention_rate_percent
FROM customer_orders;


-- Average number of orders per customer
WITH customer_orders AS (
    SELECT 
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT 
    ROUND(AVG(total_orders), 2) AS avg_orders_per_customer
FROM customer_orders;


-- Top 10 customers by total spending
SELECT 
    c.customer_unique_id,
    SUM(op.payment_value) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_payments op ON o.order_id = op.order_id
GROUP BY c.customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;
