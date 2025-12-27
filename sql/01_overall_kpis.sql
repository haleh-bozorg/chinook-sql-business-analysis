-- =====================================================
-- KPI 1: Overall Sales Performance
-- Description:
--   Calculates total revenue, total invoices,
--   and number of unique customers.
-- =====================================================

SELECT
  ROUND(SUM(total), 2)        AS total_revenue,
  COUNT(invoice_id)           AS total_invoices,
  COUNT(DISTINCT customer_id) AS unique_customers
FROM invoice;
