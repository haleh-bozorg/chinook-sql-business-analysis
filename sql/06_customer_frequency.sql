
-- =====================================================
-- KPI 6: Customer Purchase Frequency
-- Description:
--   Segments customers based on invoice frequency.
--   Note: In Chinook sample data, all customers have multiple invoices,
--   so classic "one-time vs repeat" may not appear.
-- =====================================================

WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(invoice_id) AS invoice_count
    FROM invoice
    GROUP BY customer_id
),
segmented AS (
    SELECT
        CASE
            WHEN invoice_count BETWEEN 3 AND 5 THEN 'Medium-frequency (3-5)'
            ELSE 'High-frequency (6+)'
        END AS customer_type
    FROM customer_orders
)
SELECT
    customer_type,
    COUNT(*) AS num_customers,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS pct_of_customers
FROM segmented
GROUP BY customer_type
ORDER BY num_customers DESC;
