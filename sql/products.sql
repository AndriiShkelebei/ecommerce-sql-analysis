-- =====================================
-- PRODUCTS ANALYSIS
-- =====================================

-- Top 10 products by revenue
SELECT 
    oi.product_id,
    SUM(oi.price + oi.freight_value) AS total_revenue
FROM order_items oi
GROUP BY oi.product_id
ORDER BY total_revenue DESC
LIMIT 10;


-- Top product categories by revenue
SELECT 
    p.product_category_name,
    SUM(oi.price + oi.freight_value) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC;


-- Top 10 products by number of orders (popularity)
SELECT 
    oi.product_id,
    COUNT(*) AS total_orders
FROM order_items oi
GROUP BY oi.product_id
ORDER BY total_orders DESC
LIMIT 10;


-- Pareto analysis (which products generate 80% of revenue)
WITH product_revenue AS (
    SELECT 
        oi.product_id,
        SUM(oi.price + oi.freight_value) AS revenue
    FROM order_items oi
    GROUP BY oi.product_id
),
ranked_products AS (
    SELECT 
        product_id,
        revenue,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue,
        SUM(revenue) OVER () AS total_revenue
    FROM product_revenue
)

SELECT 
    COUNT(*) AS products_for_80_percent
FROM ranked_products
WHERE cumulative_revenue <= 0.8 * total_revenue;


-- Average product price
SELECT 
    ROUND(AVG(price), 2) AS avg_price
FROM order_items;


-- Max product price
SELECT 
    MAX(price) AS max_price
FROM order_items;
