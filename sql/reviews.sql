-- =====================================
-- REVIEWS & CUSTOMER SATISFACTION
-- =====================================

-- Average review score
SELECT 
    ROUND(AVG(review_score), 2) AS avg_review_score
FROM order_reviews;


-- Distribution of review scores
SELECT 
    review_score,
    COUNT(*) AS total_reviews
FROM order_reviews
GROUP BY review_score
ORDER BY review_score;


-- Average delivery time vs review score
SELECT 
    ROUND(AVG(
        EXTRACT(EPOCH FROM (o.order_delivered_customer_date - o.order_purchase_timestamp)) / 86400
    ), 2) AS avg_delivery_days,
    ROUND(AVG(r.review_score), 2) AS avg_rating
FROM orders o
JOIN order_reviews r ON o.order_id = r.order_id
WHERE o.order_delivered_customer_date IS NOT NULL;


-- Delivery delay impact on ratings
SELECT 
    CASE 
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 'delayed'
        ELSE 'on_time'
    END AS delivery_status,
    ROUND(AVG(r.review_score), 2) AS avg_rating
FROM orders o
JOIN order_reviews r ON o.order_id = r.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status;


-- Order value vs review score
SELECT 
    CASE 
        WHEN op.payment_value < 100 THEN 'low'
        WHEN op.payment_value BETWEEN 100 AND 500 THEN 'medium'
        ELSE 'high'
    END AS order_value_segment,
    ROUND(AVG(r.review_score), 2) AS avg_rating
FROM order_payments op
JOIN order_reviews r ON op.order_id = r.order_id
GROUP BY order_value_segment;


-- Seller performance (low-rated sellers)
SELECT 
    oi.seller_id,
    ROUND(AVG(r.review_score), 2) AS avg_rating,
    COUNT(*) AS total_orders
FROM order_items oi
JOIN order_reviews r ON oi.order_id = r.order_id
GROUP BY oi.seller_id
HAVING COUNT(*) > 50
ORDER BY avg_rating ASC
LIMIT 10;
