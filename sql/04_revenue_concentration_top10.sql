
-- =====================================================
-- KPI 4: Revenue Concentration (Top 10 Customers Share)
-- Description:
--   Calculates how much of total revenue comes from the top 10 customers.
-- =====================================================

WITH customer_revenue AS (
    SELECT
        c.customer_id,
        SUM(i.total) AS revenue
    FROM invoice i
    JOIN customer c
      ON i.customer_id = c.customer_id
    GROUP BY c.customer_id
),
total_revenue_cte AS (
    SELECT SUM(revenue) AS total_revenue
    FROM customer_revenue
),
top10_revenue_cte AS (
    SELECT SUM(revenue) AS top10_revenue
    FROM (
        SELECT revenue
        FROM customer_revenue
        ORDER BY revenue DESC
        LIMIT 10
    ) t
)
SELECT
    ROUND(tr.total_revenue, 2) AS total_revenue,
    ROUND(t10.top10_revenue, 2) AS top10_revenue,
    ROUND(t10.top10_revenue / tr.total_revenue * 100, 2) AS top10_share_pct
FROM total_revenue_cte tr
CROSS JOIN top10_revenue_cte t10;
