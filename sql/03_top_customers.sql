-- =====================================================
-- KPI 3: Top Customers by Revenue
-- Description:
--   Identifies the top 10 customers based on total revenue.
-- =====================================================

SELECT
  c.customer_id,
  c.first_name || ' ' || c.last_name AS customer_name,
  ROUND(SUM(i.total), 2)             AS total_revenue,
  COUNT(i.invoice_id)                AS total_invoices
FROM invoice i
JOIN customer c
  ON i.customer_id = c.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_revenue DESC
LIMIT 10;
