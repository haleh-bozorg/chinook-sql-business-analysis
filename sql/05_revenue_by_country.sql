-- =====================================================
-- KPI 5: Revenue by Country
-- Description:
--   Summarizes revenue and customer activity by country.
-- =====================================================

SELECT
  c.country,
  ROUND(SUM(i.total), 2)        AS total_revenue,
  COUNT(i.invoice_id)           AS total_invoices,
  COUNT(DISTINCT c.customer_id) AS unique_customers
FROM customer c
JOIN invoice i
  ON i.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;
